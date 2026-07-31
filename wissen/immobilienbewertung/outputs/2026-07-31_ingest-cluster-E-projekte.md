---
title: "Ingest Cluster E — IMMO-Projektordner 02–05 und _Vorlage"
date: 2026-07-31
status: abgeschlossen
scope: "IMMO - 01 Projekte/{02 STWE, 03 TDD, 04 CONTROLLING, 05 MASSAUFNAHMEN, _Vorlage}"
hinweis: "01 BEWERTUNG PROJEKTE ist bereits eingearbeitet und war nicht Gegenstand."
---

# Ingest Cluster E — Befund

Basispfad (vollstaendig):
`/Users/raphaeljans/Library/CloudStorage/OneDrive-FreigegebeneBibliotheken–JANS/IMMO - 01 Projekte/`

Arbeitsdatum: 2026-07-31 (gemessen via `date`).
Dieses Dokument wird waehrend des Laufs fortlaufend ergaenzt.

## Bestandsaufnahme (find, 31.07.2026)

| Ordner | Inhalt (Kurz) |
|---|---|
| `02 STWE PROJEKTE/` | `2601 BIEL` (realer Fall, vollstaendig), `2412 Ebmatingen` (LEER), `_Archiv` (nur 4 Dateien: Begruendungsakt-Doktrin + Ebmatingen-Reglemente) |
| `03 TDD PROJEKTE/` | nur `2513 BAAR` (ein einziges TDD-Projekt) |
| `04 CONTROLLING/` | `CONTROLLING & SENSITIVITÄT.pdf/.indd`, `LINK/` (Niederhasli-Fact-Sheets), `Juan/` (Oftringen, Burg/Ipsach), `_Archiv/` |
| `05 MASSAUFNAHMEN/` | nur `0105_01_PFAFFHAUSEN` (ein Objekt) |
| `_Vorlage/` | `02 Stockwerkeigentum/` (vollstaendiger STWE-Vorlagensatz), `260611-Checkliste-Kauf-Liegenschaft/`, `hef.ch/` |

Erster Befund zur Ordnerhygiene: `02 STWE PROJEKTE/2412 Ebmatingen` ist ein leerer Ordner —
der Ebmatingen-Fall (Zuerichstrasse 113/115) liegt tatsaechlich unter `_Vorlage/02 Stockwerkeigentum/`
und in `02 STWE PROJEKTE/_Archiv/03 Reglement/_Vorlage/EBMATINGEN WOMA/`. Der Ebmatingen-Fall
ist damit vom Projekt- zum Vorlagen-Fall promoviert worden.

---

# TEIL 1 — `02 STWE PROJEKTE/` (Fall 2601 BIEL, Ernst-Schüler-Strasse 41, 2502 Biel)

## 1.1 Das Rechenschema der Wertquotenberechnung (Zellebene)

Quelle: `02 STWE PROJEKTE/2601 BIEL/02 Wertquotenberechnung/Wertquotenberechnung STWEG ESS 2502 Biel.xlsx`,
Blatt `Tabelle1`. Identisch als PDF in `03 Aufteilungsplan/2602 BIEL/2 Wertquotenberechnung.pdf` (S. 2).

Spaltenschema (Zeile 5): `STWE-Nr. | Bez. | Nutzung | Fläche/m2 | Faktor | Punkte | P.tot. | Anteil in % | Wertquote in 1000`

Rechenweg:
1. Je Teilfläche einer Einheit: **Punkte = Fläche x Faktor** (Formel `=D*E`, z.B. F7 `=D7*E7`).
2. **P.tot.** = Summe aller Punktezeilen einer Einheit.
3. **Anteil in %** = P.tot. / Gesamtpunkte x 100.
4. **Wertquote in 1000** = Anteil x 10, auf ganze Tausendstel gerundet; Kontrollsumme
   `G29 =SUM(G7:G28)` = 1000 (einzige Summenformel im Blatt).

Belegte Faktoren Biel (Blatt `Tabelle1`, Spalte E):

| Flächenart | Faktor | Zellen |
|---|---|---|
| Keller im Untergeschoss | 0.30 | E8, E12, E16, E20, E23 |
| Terrasse | 0.25 | E11 |
| Balkon | 0.25 | E15, E19 |
| Wohnung EG (W1) | 1.893 | E7 |
| Wohnung 1. OG (W2) | 2.128 | E10 |
| Wohnung 2. OG (W3) | 2.086 | E14 |
| Wohnung 3. OG (W4) | 2.108 | E18 |
| Wohnung 4. OG (W5) | 1.876 | E22 |
| Dachgeschoss gesamt (W6) | 1.007 | E25 |
| Atelier EG (A7) | 1.126 | E27 |

Ergebnis (Spalte I): 140 / 178 / 180 / 182 / 160 / 100 / 60 = 1000.

## 1.2 KRITISCHER BEFUND: die Biel-Faktoren folgen KEINEM Regime, sie sind rueckwaerts kalibriert

Die Nebenflaechen-Faktoren (Keller 0.30, Balkon/Terrasse 0.25) sind konstant und regimekonform.
Die **Hauptflaechen-Faktoren dagegen sind Ergebnis, nicht Vorgabe**. Drei Indizien, alle aus der
Datei selbst:

1. **Nicht-monotone Geschossreihe.** EG 1.893 → 1. OG 2.128 → 2. OG 2.086 → 3. OG 2.108 →
   4. OG 1.876 → DG 1.007. Ein Lagefaktor-Regime steigt (oder faellt) mit dem Geschoss; diese
   Reihe springt.
2. **Drei Nachkommastellen** bei jedem Hauptflaechen-Faktor — ein gesetzter Faktor waere
   1.10 / 1.15 / 1.20 (so die Vorlage, siehe 1.4).
3. **Jede Einheit landet auf einer runden Zielquote.** Nachgerechnet aus den Zellwerten:

| Einheit | Rechnung aus D/E | Summe | Zielquote (I) |
|---|---|---|---|
| 1894-1 W1 | 71.8 x 1.893 = 135.917 + 4.05 | 139.97 | **140** |
| 1894-2 W2 | 80.0 x 2.128 = 170.24 + 3.75 + 3.99 | 177.98 | **178** |
| 1894-3 W3 | 83.9 x 2.086 = 175.015 + 3.325 + 1.62 | 179.96 | **180** |
| 1894-4 W4 | 83.9 x 2.108 = 176.861 + 3.325 + 1.83 | 182.02 | **182** |
| 1894-5 W5 | 83.8 x 1.876 = 157.209 + 2.82 | 160.03 | **160** |
| 1894-6 W6 | 99.3 x 1.007 = 99.995 | 100.00 | **100** |
| 1894-7 A7 | 53.3 x 1.126 = 60.016 | 60.02 | **60** |

Sieben von sieben Einheiten treffen die runde Zielquote auf zwei Stellen genau. Das ist
kein Zufallsergebnis eines Faktor-Regimes, sondern eine Rueckwaerts-Kalibrierung:
**Zielquote zuerst gesetzt, Faktor danach gesolvt.**

Zusaetzlicher Beleg aus der Zellstruktur: In F7/F10/F14/F18/F22 steht noch die Formel `=D*E`,
in **F25 und F27 steht nur noch der Hartwert 100 bzw. 60** — dort wurde die Formel durch das
Ergebnis ueberschrieben. Die Spalte G (P.tot.) enthaelt ueberhaupt keine Formeln, nur Hartwerte;
einzig G29 summiert. Das Blatt ist damit **Darstellung eines Resultats, keine lebende Rechnung**.

Bewertungsrelevanz: Wertquoten aus einem so aufgebauten Blatt duerfen nicht als objektivierter
Wertmassstab in eine Bewertung uebernommen werden. Sie sind eine ausgehandelte bzw. gesetzte
Groesse, die nachtraeglich mit einem Flaechenmodell plausibilisiert wurde.

## 1.3 Vergleich der beiden Faktor-Regimes (Biel gegen Ebmatingen/Vorlage)

Zweiter Fall auf Zellebene gelesen:
`_Vorlage/02 Stockwerkeigentum/02 Wertquotenberechnung/02 Vorlage Wertquotenberechnung xxx.xlsx`
sowie `.../Archiv/Wertquotenberechnung 113.xlsx` und `.../Archiv/251111/Wertquotenberechnung 113.xlsx`
(Ebmatingen, Zuerichstrasse 113/115, 8123 Ebmatingen).

**Regime A — Ebmatingen/Vorlage (echtes Faktor-Regime, geschossabhaengig):**

| Flaechenart | Faktor | Beleg |
|---|---|---|
| Wohnung Erdgeschoss | **1.10** | E7/E12 Vorlage; E7/E13/E19/E25 Ebm. 113 |
| Wohnung 1. Obergeschoss | **1.15** | E17/E22 Vorlage |
| Wohnung 2. Obergeschoss | **1.20** | E27/E32 Vorlage |
| Balkon | 0.25 | E8, E13, E18, … |
| Keller im Untergeschoss | 0.30 | E9, E14, … |
| Estrich im Dachgeschoss | 0.30 | E10, E15, … |
| Garage im Untergeschoss | 0.30 | E37–E41 Vorlage |
| Aussenparkplatz / Abstellplatz | **0.20** | E80 Ebm. 113 (6 PP); E43/E44 Fassung 251111 |

Regime A ist sauber: zwei Stellen, monoton steigend mit dem Geschoss (+0.05 je Geschoss,
also **+4.5 % je Geschoss vom EG-Wert**), Nebenflaechen mit festen Klassen. Die Quoten fallen
hier **nicht** rund aus (Vorlage: 171/130/174/149/180/160/8/8/8/6/6), was genau das Gegenteil
der Biel-Signatur ist und das Regime bestaetigt.

**Regime B — Biel:** dieselben Nebenflaechen-Klassen (0.30 / 0.25), aber die Hauptflaeche
traegt einen je Einheit individuell gesolvten Faktor (siehe 1.2).

Beide Regimes teilen dieselbe Nebenflaechen-Systematik. Das ist der uebertragbare Kern:
**Keller 0.30 · Estrich 0.30 · Garage UG 0.30 · Balkon 0.25 · Terrasse 0.25 · Aussenparkplatz 0.20**,
Hauptwohnflaeche 1.00 als Basis mit Geschossaufschlag.

**Widerspruch in den Ebmatingen-Fassungen (nicht geglaettet):** Zwei Dateien tragen denselben
Namen `Wertquotenberechnung 113.xlsx`, rechnen aber unterschiedliche Perimeter:
- `Archiv/Wertquotenberechnung 113.xlsx`: Titel «Zuerichstrasse 113 **&** 115», 12 Wohnungen +
  6 Aussenparkplaetze, Punktetotal 1215.57 (G82).
- `Archiv/251111/Wertquotenberechnung 113.xlsx`: Titel «Zuerichstrasse 113», 6 Wohnungen +
  2 Abstellplaetze, Punktetotal 594.685 (G46).
Beide normieren auf 1000. Die gleiche Wohnung W1 (82.2 m2, Faktor 1.10) erhaelt damit einmal
Quote 87, einmal Quote 178. Ohne Perimeter-Angabe ist eine Wertquote **bedeutungslos** —
der Perimeter (eine STWEG oder zwei) muss immer mitgefuehrt werden.

Nebenbefund Datenqualitaet: In `Archiv/Wertquotenberechnung 113.xlsx` Zelle **F47** steht
13.9 Punkte fuer Estrich E7 bei 13.6 m2 x 0.3 — korrekt waeren 4.08. Ein Tippfehler
(13.9 statt 4.08), der ueber G43 in die Quote von W7 eingeht.

## 1.4 Widerspruch zwischen den Flaechenfassungen Biel (ausdruecklich benannt)

Drei Fassungen, alle mit Titelblattdatum **01.02.2026, Gez. RJ**:

| Einheit | `2.1 Übersicht STWEG Flächen.pdf` | `2602 BIEL/2 Wertquotenberechnung.pdf` (S.1) | `1 TEILUNGSPLAN 41.pdf` | XLSX rechnet mit |
|---|---|---|---|---|
| 1894-1 gesamt | 77.6 m2 (Whg 71.8 + **Keller 5.8**) | 85.3 m2 (Whg 71.8 + **Keller 13.5**) | W1 71.8 | Keller **13.5** |
| 1894-6 gesamt | 70.2 m2 (**DG 65.0** + Keller 5.2) | **99.3 m2** «Gesamtflaeche im DG», kein Keller | DG-Plan: **65.0** | **99.3** |

Zwei harte Abweichungen:
- **Keller 1894-1: 5.8 gegen 13.5 m2** (Delta 7.7 m2). Die Wertquotenrechnung folgt 13.5.
- **Dachgeschoss 1894-6: 65.0 gegen 99.3 m2** (Delta 34.3 m2). Teilungsplan und Uebersicht
  nennen 65.0, die Wertquotenrechnung setzt 99.3 und laesst den Keller -6 (5.2 m2) ganz weg.

Da die Wertquote von 1894-6 (100/1000) aus 99.3 m2 abgeleitet ist, waehrend der beurkundungs-
relevante Teilungsplan 65.0 m2 zeigt, ist das ein Konsistenzrisiko fuer den Begruendungsakt
(Ziffer II der Doktrin verlangt ausdruecklich «Konsistenz mit Aufteilungsplan und Begruendungsakt»,
siehe 1.6). **Klaerungsbedarf, nicht glaetten.**

## 1.5 Flaechendefinition Biel (aus den Raumbeschriftungen rekonstruiert)

Aus `1 TEILUNGSPLAN 41.pdf` (3. OG, Einheit 1894-4) sind alle Raumflaechen beschriftet:
Zimmer 1 15.2 · Zimmer 2 15.5 · Zimmer 3 15.5 · Kueche 9.7 · Wohnzimmer 16.7 · Gang 6.9 ·
Bad 4.4 = **83.9 m2 = die im Blatt gefuehrte «Flaeche/m2» der Einheit W4**.

Die Wertquoten-Flaeche ist damit die **Summe der Raum-Nettoflaechen innerhalb der Einheit**
(Gang und Nasszellen eingeschlossen, Wandquerschnitte nicht), Balkon/Terrasse/Keller getrennt.
Das entspricht der Logik der Nettonutzflaeche innerhalb des Sonderrechts, nicht der BGF.
Kontrollbeleg Atelier: 50.1 (Atelier) + 1.6 (Lager) + 1.6 (WC) = 53.3 m2 = A7.

Abweichung 1.OG: der Plan beschriftet W2 mit **79.9 m2**, die Rechnung setzt **80.0 m2**
(Raumsumme 14.0+14.4+15.0+9.2+6.9+16.2+4.3 = 80.0). Rundungsdifferenz 0.1 m2, unkritisch,
aber Beleg dafuer, dass Plan- und Rechnungsfassung nicht automatisch verknuepft sind.

## 1.6 Begruendungs-Doktrin STWEG (JANS-eigen, uebertragbar)

Quelle: `02 STWE PROJEKTE/_Archiv/00 Begründungsakt/00 Zusammenfassung Prinzip Begründung STWEG.docx`,
verfasst Raphael Jans, **25.10.2025**. Rechtsgrundlage im Dokument: **Art. 712a–712t ZGB**.
(Zweitablage als PDF in `_Vorlage/02 Stockwerkeigentum/00 Begründungsakt/`.)

**Begriffsdisziplin (das eigentliche Substrat):** Das Grundstueck bleibt **ungeteilt**; nur das
Eigentum wird rechtlich neu strukturiert. Drei Kernbegriffe sauber trennen: Stockwerkeigentum
(Sonderform des Miteigentums, Art. 712a ZGB) · Miteigentumsanteile (Bruchteile am Grundstueck und
an den gemeinschaftlichen Teilen) · Sonderrecht (ausschliessliches Nutzungs- und Verwaltungsrecht
an bestimmten Raeumen). Ausdruecklich zu vermeiden: «Eigentum pro Stockwerk», «Aufteilung des
Grundstuecks nach Stockwerken» — beides rechtlich falsch. Korrekte Formulierungen je Adressat:
Notariat/Grundbuch «Begruendung von Stockwerkeigentum gemaess Art. 712a ff. ZGB an der
Liegenschaft Parz.-Nr. …»; Planbeschrieb «Zuordnung der Sonderrechte an den im Aufteilungsplan
bezeichneten Raeumen und Geschossen»; Bericht «Das Eigentum am Grundstueck wird in
Miteigentumsanteile mit Sonderrechten an bestimmten Gebaeudeteilen gegliedert».

**Konstitutivwirkung:** Beurkundung allein genuegt nicht. Erst der **konstitutive Eintrag im
Grundbuch** bewirkt (a) Entstehung des Stockwerkeigentums, (b) Entstehung der
Stockwerkeigentuemergemeinschaft, (c) Abloesung des bisherigen Alleineigentums.

**Pflichtbeilagen des Begruendungsakts (Checkliste aus dem Dokument):**
- A) Oeffentlicher Begruendungsakt, beurkundet durch das Notariat **am Ort des Grundstuecks**,
  angemeldet beim Grundbuchamt desselben Bezirks. Inhalt: Bezeichnung des Grundstuecks gemaess
  Grundbuch · Festlegung der Miteigentumsanteile (Wertquoten) · Zuordnung der Sonderrechte ·
  Verweis auf Aufteilungsplan und Reglement. Formalien vorgaengig mit dem lokalen Notariat abstimmen.
- I. **Aufteilungsplan:** grafische Darstellung aller Stockwerke und Einheiten · klare Abgrenzung
  der Sonderrechte · Kennzeichnung der gemeinschaftlichen Teile · Nummerierung der Einheiten ·
  Bezug zur Parzellennummer.
- II. **Verzeichnis der Wertquoten:** Anteile je Einheit in Bruchteilen oder Tausendsteln ·
  Zuordnung jeder Quote zu einer Einheit · **Konsistenz mit Aufteilungsplan und Begruendungsakt**.
- III. **Benutzungs- und Verwaltungsreglement:** Organisation · Rechte/Pflichten · Nutzung von
  Sonder- und Gemeinschaftsteilen · Kosten- und Lastenverteilung · Verwaltung, Beschlussfassung,
  Erneuerungsfonds. Form: Bestandteil des Begruendungsakts oder beurkundet beigelegt; Eintrag
  oder Anmerkung im Grundbuch.
- IV. **Aktueller Grundbuchauszug** (Nachweis des bisherigen Eigentumszustands).
- **Zustimmungserklaerungen**, falls zutreffend: aller bisherigen Eigentuemer sowie der
  **Pfandglaeubiger bei Belastungen**.
- B) **Grundbuchanmeldung** — in der Praxis durch das beurkundende Notariat.

Strategischer Fallstrick, den das Dokument selbst adressiert: die Wertquote ist der einzige
Posten, der zugleich in Akt, Plan und Reglement konsistent sein muss. Genau dort liegt der
unter 1.4 belegte Bruch im Fall Biel.

## 1.7 Reglement Biel — Aufbau und materielle Kennwerte

Quellen: `01 Reglement/1 Reglement Biel.docx` (Fassungsstand) und `.../1 Reglement Biel.pdf`
(24 Seiten, erstellt 01.02.2026). Kopf: «Liegenschaften BFS Nr. 371, Grundstueck Nr. 1894,
EGRIS_EGRID CH734618359747».

**Gliederung (8 Kapitel):** 1 Aufteilung des Eigentums (1.1 Gegenstand · 1.2 Aufteilung ·
1.3 Zusammenlegung/Rueckfuehrung · 1.4 Aenderung der Wertquoten · 1.5 Sonderrechte ·
1.6 Gemeinschaftliche Teile) · 2 Benutzung der Sonderrechtsraeume (2.1–2.9, inkl. Zweckbestimmung,
Unterhaltspflicht, Zutrittsrecht, Haustiere, Musikinstrumente) · 3 Benutzung der gemeinschaftlichen
Teile (3.1–3.9, inkl. **3.6 Photovoltaikanlage**, 3.4/3.5 ausschliessliche Benuetzungsrechte) ·
4 Kosten (4.1 Begriff · 4.2 Verteilschluessel · 4.3 Erneuerungsfonds · 4.4 Einzug · 4.5 Sicherung) ·
5 Unterhalt/Umbau/Erneuerung (5.1 Versicherung · 5.2 notwendig/dringend · 5.3 nuetzlich ·
5.4 Verschoenerung · 5.5 Zerstoerung) · 6 Verwaltung (6.1–6.17) · 7 Ausschluss aus der
Gemeinschaft (7.1/7.2) · 8 Weitere Bestimmungen (8.1–8.9).

**Kostenverteilschluessel (Ziff. 4.2):**
- Grundsatz: Betrieb, Unterhalt und Erneuerung **im Verhaeltnis der Wertquoten** (4.2.1).
- Ausnahme Heizung: Betriebs-/Wartungskosten nach **Verbrauch gemaess Waermezaehlern**;
  Verteilschluessel durch anerkannten Fachmann. Fehlen die Zaehler, faellt die Heizung auf den
  Wertquotenschluessel zurueck.
- Waerme-/Wasserzaehler selbst sind gemeinschaftlich (Ziff. 1.5).
- Einnahmen aus Vermietung gemeinschaftlicher Raeume/Aussenparkplaetze: Verteilung
  **im Verhaeltnis der Wertquoten** (Ziff. 3.7).

**Erneuerungsfonds (Ziff. 4.3) — der belegte Satz:** jaehrliche Beitraege **mindestens 0.5 %
des Gebaeudeversicherungswertes** und annaehernd das Maximum der gesetzlich zulaessigen
Abschreibungen/Rueckstellungen. Aufwendungen zulasten des Fonds nur per Versammlungsbeschluss;
Ausnahme unaufschiebbare Arbeiten. PV-Gutschriften fliessen in den Erneuerungsfonds (Ziff. 3.6).
Verzugszins auf Vorschuesse: **2 % ueber dem aktuellen Referenzzinssatz** (Ziff. 4.4);
Nachtragszins fuer nicht mitfinanzierende Eigentuemer ebenfalls **2 % ueber Referenzzinssatz**
(Ziff. 5.4).

Dieser Satz ist der bewertungsrelevante Anker: 0.5 % des GVW p.a. ist die im JANS-Reglement
gesetzte Ruecklagen-Untergrenze und damit ein direkt verwendbarer Instandhaltungs-Ansatz.

**Quoren (Ziff. 6.6–6.8):**
- Einfaches Mehr (6.6): Mehrheit der **anwesenden oder vertretenen** Eigentuemer; bei
  Stimmengleichheit entscheidet der Verwalter; Zirkulationsbeschluss nur mit schriftlicher
  Zustimmung **aller**.
- Qualifiziertes Mehr (6.7) = **doppeltes Mehr**: Mehrheit aller Eigentuemer, die zugleich
  **zu mehr als der Haelfte anteilsberechtigt** sind. Erforderlich fuer: wertsteigernde/
  wirtschaftlichkeitsverbessernde Erneuerungs- und Umbauarbeiten · Reglementsaenderung ·
  Einraeumung weitergehender ausschliesslicher Benuetzungsrechte · Verschoenerungs-/
  Bequemlichkeitsarbeiten · Einschraenkung der Verwalterzustaendigkeit bis auf das Mass
  von Art. 712s ZGB.
- Einstimmigkeit (6.8): Umschreibung der Sonderrechtsteile · Aufhebung/Zusammenlegung von
  Einheiten (Ziff. 1.3) · **Aenderung der Wertquote (Ziff. 1.4)** · Aenderung der
  Zweckbestimmung (Ziff. 2.3) · Aufhebung des Stockwerkeigentums (Ziff. 8.1) ·
  Zirkularbeschluesse · Einschraenkung der Verwalterzustaendigkeit **ueber** Art. 712s ZGB hinaus ·
  Aenderung der Ziffern 3.1/3.6 und der Ausschlussbestimmungen.
- Anfechtung (6.9): binnen **Monatsfrist** ab Kenntnis beim Richter, mit gleichzeitiger Meldung
  an den Verwalter.

**Sonderrecht/Gemeinschaft — die Abgrenzung im Klartext (Ziff. 1.5/1.6):**
Sonderrecht: nichttragende Zwischenwaende · Bodenbelaege inkl. Unterlagsboden und darin verlegter
Bodenheizung, **aber nicht** die Trittschallisolation · Deckenverkleidungen, **nicht** die rohen
Betondecken · Wandverkleidungen · Tueren **ohne** Wohnungseingangstuer und Tueren zu
gemeinschaftlichen Raeumen · Einbauschraenke · Kueche, Bad- und Toiletteneinrichtungen ·
**Innenbereich** der Terrassen · Leitungen ab Abzweigung von der gemeinschaftlichen Leitung.
Gemeinschaftlich: Grundflaeche und Umgelaende · tragende/konstruktive Bauteile ·
haustechnische Steigstraenge · **Fenster inkl. Rahmen, Laeden, Rollladen, Storen** ·
**Aussenbereich** der Terrassen und Terrassentueren · Wohnungsabschlusstuer · Putzraum ·
Korridore/Treppenhaus · Lift · Technikraum · Trockenraum · Velo(abstell)raum · Briefkasten ·
Dach · **Photovoltaikanlage auf der Dachflaeche** · Rueckstellungen inkl. Erneuerungsfonds.
Aufzaehlung ausdruecklich nicht abschliessend. Kellerraeume im Sonderrecht muessen sichtbare
gemeinschaftliche Leitungsfuehrungen dulden.

Die Trennlinie ist konsequent: **innen/abloesbar = Sonderrecht, Huelle/Tragwerk/Erschliessung
= Gemeinschaft**, mit den drei klassischen Grenzfaellen Trittschallisolation, Terrasse
(innen/aussen) und Wohnungseingangstuer jeweils auf der Gemeinschaftsseite.

**FEHLER IM REGLEMENT (nicht geglaettet):** Ziffer 1.1 lautet «An der Liegenschaft **in der
Gemeinde Maur, Grundstueck Nr. 8709**, besteht Stockwerkeigentum …» — das ist ein
uebernommener Rest aus der Ebmatingen/Maur-Vorlage. Der Kopf derselben Datei nennt korrekt
BFS 371 (Biel), Grundstueck 1894, EGRID CH734618359747. Der Widerspruch steht in **beiden**
Fassungen (DOCX und PDF vom 01.02.2026) und trifft ausgerechnet die Bestimmung, die den
Gegenstand des Stockwerkeigentums definiert. Muss vor Beurkundung bereinigt werden.

**Musterreglement-Herkunft:** Der Vorlagensatz unter
`_Vorlage/02 Stockwerkeigentum/03 Reglement/` weist drei Quellen aus: `_Leitfaden/03
Musterreglement_und_Zielsetzungen_fuer_StWE.pdf` · `_Vorlage/HAUSINFO.CH/03 hausinfo.ch
download-musterreglement-stwe.pdf` · sowie die eigene Kurzfassung `02_Kurzfassung/03 Reglement
Kurzfassung_Stockwerkeigentum_Minimalvorlage.docx/.pdf` und die Langfassung als InDesign-Vorlage
`01_Langfassung/260112 Vorlage Langfassung Reglement.indd`. Das Biel-Reglement ist eine
Weiterentwicklung der Ebmatingen-Fassung (`_Vorlage/EBMATINGEN WOMA/20251026_… Entwurf.pdf`,
`20251210_… Reglement_STWEG.docx` + anonymisierte Fassung) — daher der Maur-Rest.

## 1.8 Grundlagen und Administrativa Biel (nur eingeordnet)

- `01 Reglement/1 biel-vipenfz-1769961270.pdf` ist **kein Reglement**, sondern eine
  **Orientierungskopie des Grundbuchplans** der Gemeinde Biel, Abteilung Infrastruktur /
  Vermessung und GIS Biel, Massstab **1:250**, Stand **01.02.2026**, bilingual DE/FR,
  Vermerk «unbeglaubigte Plankopie», Quelle `gis.biel-bienne.ch`, erzeugt mit TCPDF.
  Datenquelle fuer die Registry (Kt. Bern / Stadt Biel).
- `03 Aufteilungsplan/00 Grundlage/00 GIS/biel-bpnvckv-1769188365.pdf` und
  `20260201164710_extract.pdf` (mutmasslich OEREB-Auszug) aus derselben Quelle.
- `00 Grundlage/00 Geodienste/av_lv95.zip` mit `dxf_geobau/geobau.dxf` — amtliche Vermessung
  LV95 als DXF, Bezugsweg geodienste.ch.
- `00 Grundlage/00 Matterport/` — Skizzenplan-Download (PDF/DWG/PNG/SVG, 6 Stockwerke) als
  Aufmass-Grundlage; gleiche Pipeline wie Teil 4 (Pfaffhausen).
- `00 Administration/_Infos.docx` enthaelt nur die Objektadresse (Ernst-Schuelerstrasse 41,
  2502 Biel) — kein Informationsgehalt darueber hinaus.
- `00 Administration/_Angebot/an-00033.pdf`, `_Rechnung/{ls-00009, re-00080,
  zahlungserinnerung-re-00080}.pdf` — reine Administrativa (Angebot, Lieferschein, Rechnung,
  Zahlungserinnerung). Nicht ausgewertet. Hinweis: zur Rechnung re-00080 existiert eine
  Zahlungserinnerung, das Mandat lief also ins Mahnwesen.
- `03 Aufteilungsplan/2602 BIEL.pln` (ArchiCAD) auftragsgemaess nicht geoeffnet.
- Planlieferant der Grundlagen-Grundrisse (`4 3.OG.pdf`, Stand 07.03.2026) ist ein externes
  Zeichnungsbuero in Bern; die STWEG-Plaene selbst tragen den JANS-Titelblock.

**Ordnerhygiene-Befund:** `02 STWE PROJEKTE/2412 Ebmatingen` ist leer; der Ebmatingen-Fall
liegt vollstaendig unter `_Vorlage/02 Stockwerkeigentum/` und in `02 STWE PROJEKTE/_Archiv/`.
`02 STWE PROJEKTE/_Archiv/` enthaelt trotz umfangreicher Ordnerstruktur nur **vier** Dateien.
Zudem trägt der Biel-Fall zwei Projektnummern nebeneinander: Ordner **2601 BIEL**, darin ein
Unterordner und eine `.pln` mit **2602 BIEL**, waehrend die Wertquoten-Datei mit **ESS 2502**
(= PLZ Biel) benannt ist. Fuer die Identifikatoren-Disziplin relevant.

---

# TEIL 2 — `03 TDD PROJEKTE/` (nur 2513 BAAR, Zugerstrasse 49, 6340 Baar)

`find`-Befund: **`03 TDD PROJEKTE/` enthaelt genau ein Projekt**, `2513 BAAR`, mit den
Unterordnern `00_Admin · 02_Korrespondenz · 04_KostenTermine · 05_Bilder · 06_Reglemente ·
09_Dokumente · _Archiv`. Kein zweites TDD-Projekt.

## 2.1 Objekt-Stammdaten (amtlich verifiziert)

| Merkmal | Wert | Quelle |
|---|---|---|
| Adresse | Zugerstrasse 49, 6340 Baar | GP-Offerte S. 2 |
| Grundstueck-Nr. | **563**, Gemeinde Baar (BFS **1701**) | OEREB-Auszug S. 1, 23.06.2025 |
| E-GRID | **CH107765720687** | OEREB-Auszug S. 1; ZugMap-Report |
| Grundbuchflaeche | **1'698 m2** | OEREB S. 1 + ZugMap |
| Flurname | Neufeld | ZugMap-Report |
| Zone | **Wohn- und Arbeitszone 4 (WA4/0.9)**, 100 % der Flaeche | OEREB S. 3 |
| Laermempfindlichkeit | **Stufe III**, 100 % | OEREB S. 4 |
| Stand amtl. Vermessung | 30.05.2025 | OEREB S. 1 |
| Baujahr | **1955** | GP-Offerte S. 2 |
| Letzte Sanierung | **2022**, Innenausbau zu moeblierten Appartements | GP-Offerte S. 2 |
| Nutzung | 20 Wohnungen (3.5- und 4.5-Zimmer), 28 Parkplaetze, Sondernutzung | GP-Offerte S. 2 |
| Eigentuemer | STWEG Zugerstrasse 49 (100 % VISION ZUG AG) | GP-Offerte S. 2 |
| Auftraggeber | Nova Property Fund Management AG, Feldeggstrasse 26, 8008 Zuerich | 38-Grad-Offerte S. 2 |

## 2.2 Methodik der Restnutzungsdauer-Analyse — der ehrliche Befund

Auftragsgemaess sollte die **Methodik** aus `O568 Honorarofferte Zustandanalyse mit Fokus
Restnutzungsdauer HLSE …V2.pdf` (38 Grad Gebaeudetechnik GmbH, V2, freigegeben **26.06.2025**,
11 Seiten, Projekt-Nr. O568 / Dok-Nr. H100) gehoben werden. **Die Offerte enthaelt keine
Herleitungsmethodik.** Sie beschreibt Umfang und Abgrenzung, nicht das Verfahren. Es gibt darin
weder Best-/Worstcase-Szenarien noch Haltbarkeitsspannen je Gewerk. Das nicht kaschieren.

Was die Offerte **belegt** liefert:

**Untersuchungsumfang (Projektumfang, S. 3):** Begehung vor Ort · **Rohrschnitte** ·
**Wasseranalysen** · Pruefen HV und UV (Haupt-/Unterverteilung Elektro) · Bericht.
Vertragsbasis: SIA 108 («jeweils aktuelle»), Leistung ausschliesslich in Phase
**4.11 Strategische Planung** (SIA-112-Phasenmodell); Phasen 4.21 bis 4.61 ausdruecklich
nicht enthalten.

**Ausgeschlossene Untersuchungstiefe (S. 8) — die eigentliche Methodik-Aussage:**
- Keine Labortests: Leitungsschnitte werden **durch 38 Grad selbst visuell beurteilt** und
  nicht an ein Labor weitergegeben.
- Keine Thermografie, keine Druck- oder Belastungstests.
- Keine baulichen Komponenten (Statik, Substanz von Waenden, Decken, Boeden).
- Keine Planung von Sanierungsmassnahmen, keine Kostenkalkulation (grobe Kostenschaetzung
  moeglich), keine Bauleitung; fehlende Plaene werden nicht erstellt.

Damit ist die Restnutzungsdauer hier eine **visuell-augenscheinliche Experteneinschaetzung
mit Materialprobe (Rohrschnitt) und Wasseranalyse**, nicht ein laborgestuetztes Verfahren.
Genau diese Grenze ist fuer die Bewertung entscheidend: die Restnutzungsdauer traegt die
Unsicherheit einer Sichtbeurteilung.

**WIDERSPRUCH in der Offerte (nicht geglaettet):** Titel und Honorartabelle fuehren **Elektro**
(CHF 500 in Phase 11), waehrend S. 3 unter «Nicht enthaltene Gewerke» ebenfalls **Elektro**
auffuehrt (neben PV-Anlage, Erdsondensimulation, Kaelte, Brandschutz). Elektro ist gleichzeitig
drin und draussen. Zudem sind die **Wasseranalysen** in der Honorartabelle mit CHF 1'000
aufgefuehrt, dort aber mit dem Vermerk «Optional — nicht im Angebot eingerechnet !!».

## 2.3 Honorarstruktur und Tagessaetze

**JANS-Gesamtplaner-Offerte** `2513 HO GP_JANS_Baar.pdf` (18 Seiten; Anschreiben datiert
28.06.2025, Fusszeile durchgehend «Zuerich, den 21.03.2025» — Datumsinkonsistenz im Dokument):

| Leistung | SIA | Tagessaetze | Honorar exkl. MwSt |
|---|---|---|---|
| Raphael Jans Architekten ETH — Architektur, Energie, Bauphysik | SIA 102-K | **7.00 à CHF 1'200** | **CHF 8'400** |
| 38 Grad Gebaeudetechnik GmbH — Heizung, Lueftung, Sanitaer, Elektro | | **5.42 à CHF 1'200** | **CHF 6'500** |
| Schmitter Brandschutzberatung GmbH — Brandschutz | | **2.00 à CHF 1'200** | **CHF 2'400** |
| **Total Ankaufspruefung TDD Stufe 1** | | **14.42 Tage** | **CHF 17'300** |

Der **einheitliche Tagessatz CHF 1'200 exkl. MwSt.** gilt quer ueber alle drei Disziplinen;
die Fremdhonorare werden durch den Tagessatz dividiert zurueckgerechnet (5.42 bzw. 2.00 Tage) —
JANS legt also fremde Pauschalen in der eigenen Tagessatz-Waehrung offen, ohne Zuschlag auf die
Fachplaner. Das ist die belegte Honorarsignatur: **Gesamtplanung ohne Aufschlag auf Subplaner**.

**Fachplaner-Honorar 38 Grad im Detail** (Offerte S. 7): Heizung 1'500 · Lueftung 1'500 ·
Sanitaer 1'500 · Elektro 500 · Unternehmer fuer Rohrschnitte 1'500 · Wasseranalysen 1'000
(optional) = Summe **6'500** in Phase 11. Nebenkosten **3 %** des Honorars (= 195), Brutto
6'695; **Total nach Aufwand 6'695 / Total Pauschal 6'500** exkl. MwSt. Nebenkostenpauschale
deckt alle Ausdrucke und Fahrtkosten (Ausdrucke: Bauherr 1-fach, Architekt 1-fach, Unternehmer
2-fach). Zahlungsfrist 30 Tage netto, danach automatisch **5 % Zins**. Offertgueltigkeit
**30 Tage**.

**Teamzusammensetzung / SIA-Phase:** Generalplanung Raphael Jans Architekten ETH ·
Gebaeudetechnik 38 Grad Gebaeudetechnik GmbH · Brandschutzplanung Schmitter Brandschutzberatung
GmbH. Leistungsumfang deklariert nach **SIA 112, 102, 108, 118/300, 118/380**; Stufe 1
Vorpruefung. Termine: Besichtigung **25.06.2025**, Probenentnahme KW 27/28 empfohlen,
**Abgabe TDD-Bericht ca. 10 Arbeitstage nach Besichtigung**.

## 2.4 Der TDD-Fragenkatalog Stufe 1 (uebertragbares JANS-Werkzeug)

Sieben Leitfragen, die die ganze Vorpruefung strukturieren (GP-Offerte S. 3):
1. **Hochhaus ja/nein?**
2. **Konsequenz Fassadensanierung:** welche weiteren Massnahmen sind mitzuziehen, damit das
   Projekt bewilligungsfaehig wird?
3. **Restnutzungsdauer Steigzone:** Kalt-/Warmwasser, Zirkulation, Feuerloeschleitung, Vor-
   und Ruecklauf Heizungsverteilung inkl. Radiatoren, Elektro HV inkl. Zuleitung bis
   Wohnungsverteiler.
4. **Feuerwehrlift / Brandmeldeanlage / Treppenhaus-Entrauchung** nachzuruesten?
5. **Fassadenmaterialisierung** inkl. Kunststofffenster nach BSV 2027?
6. **Primaerenergien** fuer den Ersatz der fossilen Waermeerzeugung?
7. **Instandsetzungskosten** im TU-Modell fuer Totalsanierung, inkl. Zusatzkosten Etappierung?

Diese sieben Fragen sind die eigentliche Methodik-Substanz des JANS-TDD: Frage 1 entscheidet
ueber das Brandschutzregime, Frage 2 ueber die Folgekosten-Kaskade, Frage 3 ueber die
Restnutzungsdauer, Frage 7 ueber die CapEx-Zahl. Direkt in den Skill `ankaufspruefung`
uebertragbar.

## 2.5 Restnutzungsdauer-Aussagen mit belegten Spannen (Massnahmenkatalog 10 Jahre)

Aus dem JANS-Massnahmenkatalog (GP-Offerte S. 4) und der Architektur-Einschaetzung (S. 7):

| Bauteil | Aussage | Beleg |
|---|---|---|
| Innenausbau / Sanitaerinstallationen fuer den Nutzer | Haltbarkeit **ca. 15–25 Jahre** ab Innenrenovation 2022 | S. 4 |
| Fenster | optisch intakt, genuegen bauphysikalisch/komfortmaessig nicht mehr; **Ersatz binnen 10 Jahren** | S. 4 |
| Gasheizung (Baujahr **1990**) | technische Nutzungsdauer erreicht oder ueberschritten; **Restnutzungsdauer vermutlich 0–5 Jahre** | S. 4 und S. 7 |
| Wassererwaermer (installiert **2005**) | erwartete Lebensdauer erreicht (bei regelmaessiger Entkalkung/Anodenersatz) | S. 6 |
| Fassade | oberflaechliche Vergrauung, stellenweise abblaetternde Farbe/Putz; lokale Ausbesserung empfohlen | S. 4 |

Bauteilweise Ersatz-Einschaetzung des Architekten (S. 7, ausdruecklich als Einschaetzung
markiert): Fassade **ja** · Fenster **vermutlich** · Dach **unbekannt** · Decke UG **unbekannt** ·
Heizung **hoechstwahrscheinlich** (JG 1990) · Sanitaerstraenge **vermutlich** (besonders bei
Grundrissveraenderungen) · Elektro Zentrale **ja**, Straenge und Wohnungen **unbekannt**.

Die Skala «ja / hoechstwahrscheinlich / vermutlich / unbekannt» ist eine saubere, ehrliche
Unsicherheitskennzeichnung und ein direkt uebernehmbares Muster fuer den TDD-Bericht.
Ergaenzt um den Satz «Restnutzungsdauer: nur vor Ort ermittelbar» (S. 7) — die Ferndiagnose
wird ausdruecklich als solche deklariert.

**Energie- und Foerderkennwerte (S. 7, Stand 2025):** Gebaeudeprogramm-Subvention
**CHF 60.– / m2** Flaeche fuer Fassade bzw. Dach; **+ CHF 30.– / m2** bei Gesamtsanierung
(Wand + Dach); **GEAK erforderlich, da Subvention sicher > CHF 10'000**. Dach nur foerderfaehig,
wenn nicht spaeter als 2000 saniert. Bewilligungsfaehigkeit der Fassadensanierung:
grundsaetzlich nur U-Wert-Erfuellung; allenfalls tieferer U-Wert bei Gebaeudeprogramm.
**Das Datum der Baubewilligung entscheidet, welche Vorschriften gelten** — der zentrale
Timing-Hebel. Primaerenergie Kt. Zug damals nicht abschliessend abgeklaert, Annahme analog
Kt. ZH / MuKEN 2014: zulaessig Waermepumpe (Erdsonde, Luft-WP), Holz, Fernwaerme; nicht
zulaessig Oel, Gas, Elektro-Direktheizung. Standortoption Fernwaerme: WWZ «Circulago»
(Seewasserwaerme) und ggf. Tech-Cluster V-Zug; Ausbautermin fuer Baar zum Zeitpunkt der
Offerte nicht bekannt.

## 2.6 Hochhausgrenze, gewachsenes Terrain, Besitzstand (bewertungsrelevant)

Kernkonflikt des Falls, sauber dokumentiert (GP-Offerte S. 4, mit Nennung der zustaendigen
Brandschutzfachperson des Kt. Zug und schriftlicher Bestaetigung):

- **Brandschutzrechtlich:** Gebaeudehoehe im Brandschutznachweis des letzten Umbaus mit **28 m**
  definiert = **Gebaeude mittlerer Hoehe**, kein Hochhaus. Massgebend ist ausdruecklich die
  Brandschutzrichtlinie, **nicht** Bauordnung oder PBG.
- **Messregel Brandschutz:** massgebend ist das **gewachsene Terrain vor Erstellung des
  Gebaeudes** (hier 1955). Bei geneigtem Terrain wird ab dem **hoechsten Punkt des natuerlichen
  Gelaendes senkrecht zur Dachflaeche (90°)** gemessen. Spaetere Terrainveraenderungen zaehlen
  nur, wenn sie die Messgrundlage substanziell veraendern.
- **Baurechtlich (Kanton Zug):** **Hochhaus = Gebaeude ueber 30 m Hoehe** (§ 10b PBG ZG,
  Abs. 1 und 2 neu seit **01.01.2019**; Quelle `10b-hochhaeuser.pdf`, Kommentar zum PBG,
  Druckdatum 23.06.2025). Zulaessig nur, wo Bauvorschriften, Zonenplan **und ein Bebauungsplan**
  es vorsehen. Feuerpolizeilich gilt dieselbe 30-m-Schwelle (dann z.B. zwei Treppenhaeuser).
- **Der Hebel:** Die BO Baar misst die Fassadenhoehe ab «OK fertig Boden EG». Bei Hochparterre
  darf diese Kote angesetzt werden, solange das Hochparterre **max. 1.20 m** ueber dem
  darunterliegenden Niveau liegt. Die Besichtigung ergab, dass **1.20 m ueberschritten** werden —
  dann ist die Fussbodenkote des darunterliegenden Geschosses massgebend, und die gerechnete
  Gesamthoehe kann **30 m ueberschreiten**. Das Gebaeude waere baurechtlich Hochhaus, obwohl
  brandschutzrechtlich Gebaeude mittlerer Hoehe.
- **Besitzstandsgarantie:** Das bestehende Gebaeude geniesst Besitzstandsgarantie, **auch wenn
  es bezueglich Gebaeudehoehe zonenfremd ist** (GP-Offerte S. 4). Bestaetigt durch den
  PBG-Kommentar Teil 2 (Stichwort «Bestandesgarantie», S. 739/1441 des Textauszugs).

Bewertungsrelevanz: eine Liegenschaft kann **gleichzeitig** brandschutzrechtlich «mittlere
Hoehe» und baurechtlich «Hochhaus» sein, weil beide Regime unterschiedliche Bezugskoten
verwenden (gewachsenes Terrain gegen OK fertig Boden EG). Fuer Wiederaufbaufaehigkeit und
Verdichtungspotenzial muss beides einzeln geprueft werden.

**Brandschutz-Massnahmenkatalog (GP-Offerte S. 5, Schmitter Brandschutzberatung, Begehung
25.06.2025)** — die CapEx-relevanten Befunde: Heizungsraumtuer bei Nennwaermeleistung ueber
**70 kW** muss in Fluchtrichtung oeffnen (heute gegenlaeufig) · Schrankfronten der
Elektro-Unterverteilungen im Treppenhaus ohne Feuerwiderstand, **min. EI30** erforderlich ·
Wasserloeschposten duerfen nicht in der Elektro-Unterverteilung stehen (in Wohnhaeusern
mittlerer Hoehe ohnehin nicht verlangt, Rueckbau erwaegen) · RWA-Schalter im Keller statt
Eingangsebene, keine Sicherheitsstromversorgung; **Abstroemoeffnung min. 0.5 m2 freie
geometrische Lueftungsflaeche**, von der Eingangsebene bedienbar, auch bei Stromausfall ·
Treppenaufstieg zum Liftmotorenraum ohne Feuerwiderstand, **min. EI30** erforderlich.
Priorisierung in drei Stufen (gering / mittel / hoch), Kriterium: Personen- bzw. Sachschaden
bei Ereignis, bei hoher Prioritaet zusaetzlich Beeintraechtigung der Feuerwehrintervention.

**Zwei latente Grossrisiken**, ausdruecklich als Unbekannte benannt: (a) Fassadendaemmung
material unbekannt (EPS oder Steinwolle) — kommt bei Sanierung eine brennbare Daemmung ohne
Brandriegel zum Vorschein, kann das erhebliche Zusatzmassnahmen ausloesen; nach FKS-Richtlinien
muessen Fassaden mit brennbarer Aussenverkleidung/Daemmung jederzeit fuer die Feuerwehr
zugaenglich sein. (b) Bei groesseren Sanierungen kann die Behoerde einen **Tragwerksnachweis
ueber die bestehende Bausubstanz** verlangen; Ertuechtigungsmassnahmen koennen sehr
kostenintensiv werden. Empfohlene Fassadenmaterialisierung fuer Gebaeudekategorie 3/4
(mittlere Hoehe): mineralischer Putz **≥ 4 mm**, Waermedaemmung **Steinwolle**; Brandriegel
entfallen bei Steinwolle-Daemmung (RFW-System).

**Datenfehler im Dokument (nicht geglaettet):** Der Brandschutz-Massnahmenkatalog auf S. 5 ist
mit «Wohnhaus **Zugerstrasse 46**, Baar» ueberschrieben, das Objekt ist Zugerstrasse **49**.
Zudem wird die zustaendige Fachperson dort als «Gemeinde Zug» bezeichnet, im Fliesstext auf
derselben Seite als kantonale Brandschutzstelle Zug. Im Gebaeudetechnik-Katalog (S. 6) ist die
Zeile BKP 242.1 Waermeerzeugung mit «**Oelheizung**» typisiert, waehrend der Text durchgehend
von der **Gasheizung** 1990 spricht — und die Zeile «Oeltank: kein Oeltank = keine Massnahmen»
bestaetigt, dass es keine Oelheizung gibt. Ein Vorlagen-Rest.

## 2.7 Dichte- und Hoehenkennwerte Baar ZG (Kandidat fuer Artikel `az-gfz-kennwerte`)

Quelle: **Bauordnung der Gemeinde Baar**, Fassung `BO_Baar_Nachfhrungen_bis_01.03.2016.pdf`
(69 Seiten, Nachfuehrungen bis 01.03.2016), § 44 «Vorschriften fuer die Einzelbauweise»
Teil 1 und Teil 2, S. 34/35. Gestuetzt auf § 7 Abs. 1 PBG ZG vom 26.11.1998.

| Zone | Geschosse max. | Fassadenhoehe max. m | Firsthoehe max. m | Gebaeudelaenge max. m | Grenzabstand klein min. m | Grenzabstand gross min. m | **AZ max.** | BZ max. | Wohnanteil min. % | Gewerbeanteil min. % |
|---|---|---|---|---|---|---|---|---|---|---|
| KA (Kernzone A) | 4 | 14.5 | 18 | – | 4 | 8 | **1.25** | – | 40 | 40 |
| W2a / 0.3 | 2 | 6.5 | 9 | 30 | 4 | 8 | **0.3** | – | 80 | – |
| W2b / 0.5 | 2 | 6.5 | 10 | 30 | 4 | 8 | **0.5** | – | 80 | – |
| W3 / 0.6 | 3 | 9.5 | 13 | 40 | 5 | 10 | **0.6** | – | 80 | – |
| WA3 / 0.6 | 3 | 10.5 | 14 | 40 | 5 | 10 | **0.6** | – | 40 | 20 |
| **WA4 / 0.9** | **4** | **14.5** | **18** | **40** | **6 / 8** | **11** | **0.9** | – | **40** | **40** |
| WA5 / 5.0 | – | 20 | 23.5 | 40 | 4 / 8 | 4 / 8 | – | **5.0** | 40 | 40 |
| AA / 3.0 | – | 7.5 | 10 | 40 | 4 / 8 | 8 | – | 3.0 | – | – |
| AB / 4.0 | – | 11 | 14.5 | 40 | 4 / 8 | 8 | – | 4.0 | – | – |
| AC / 4.0 | – | 16 | 19.5 | – | 4 | 4 / 8 | – | 4.0 | – | – |
| AD / 5.0 | – | 20 | 23.5 | – | 4 / 8 | 4 / 8 | – | 5.0 | – | – |

KB, OS und BsV: separate Zonenvorschriften nach §§ 33–36 BO. Abstaende gelten auch gegenueber
der Landwirtschaftszone (Fussnote 1). In den Zonen WA4/0.9 und WA5/5.0 gilt gegenueber
Wohnzonen und Wohnbauten in angrenzenden Zonen **immer ein Grenzabstand von min. 8 m**
(§ 30 Abs. 6); der grosse Grenzabstand kann fuer Gewerbebetriebe im EG bis auf das Mass des
kleinen reduziert werden, **nicht aber** dieser 8-m-Mindestabstand. Sonderfall Wohnzone
Unterfeldweg/Neufeldweg: Gebaeudelaenge max. 30 m, kleiner Grenzabstand min. 4 m (Fussnote 9).

**Fiktive Geschosshoehen fuer die AZ-Ermittlung (§ 44 Fussnote 5) — der bewertungsrelevante
Umrechnungsschluessel:**
- W2a/0.3, W2b/0.5, W3/0.6, WA3/0.6: **3.0 m**
- KA und **WA4/0.9: 3.5 m**
- Gewerberaeume im Erdgeschoss: **4.5 m**

**UG-Anrechnung (§ 44 Fussnote 4):** In den Zonen KA, WA3/0.6 und WA4/0.9 wird nach Massgabe
der Erschliessung eine **zusaetzliche Ausnuetzung fuer gewerbliche Lagerraeume im Untergeschoss
bis max. 30 % der maximalen Ausnuetzungsziffer** gewaehrt. Fuer WA4/0.9 also bis AZ 0.27
zusaetzlich, potenziell AZ 1.17.

**Ausnuetzungsbonus bei Arealbebauung (§ 19):**

| Zone | W2b/0.5 | W3/0.6 | WA3/0.6 | **WA4/0.9** |
|---|---|---|---|---|
| AZ max. mit Arealbebauung | 0.6 | 0.7 | 0.7 | **1.0** |

In allen uebrigen Zonen kein Bonus. Werden nicht alle Anforderungen der Arealbebauung erfuellt,
reduziert sich der Bonus entsprechend; ein reduzierter Bonus setzt nach § 29 Abs. 2 PBG in
jedem Fall die Erfuellung von § 17 Abs. 1 lit. a, b und c BO voraus. Arealbebauung erlaubt
zudem Abweichungen bei Gebaeudelaenge, Grenz-/Gebaeudeabstand und **ein zusaetzliches Geschoss**
(bei Terrassenhaeusern zwei); wird das Zusatzgeschoss gebaut, **erhoehen sich grosser und
kleiner Grenzabstand gegenueber Nachbarparzellen je um die Mehrhoehe** (§ 18).

**Dachgeschoss / Attika (§ 54):** Bei Flach-, Mansarden- und Tonnendaechern koennen gemaess
kantonaler V PBG **50 % der darunterliegenden anzurechnenden Geschossflaeche frei genutzt**
werden; die 50 % uebersteigende Mehrflaeche zaehlt zur anzurechnenden Geschossflaeche.
Wird das Attikageschoss auf die Fassadenflucht oder naeher als **1.20 m** zur Fassade gestellt,
erhoeht sich der minimale Grenzabstand um **1.50 m**, sofern mehr als **2/3** der Fassadenlaenge
erfasst wird. Auf dem Dach eines Attikageschosses ist ausser technisch bedingten Anlagen keine
Nutzung zulaessig. Ergaenzend zu V PBG § 8 Abs. 2: **Das Dachgeschoss zaehlt als Vollgeschoss,
wenn die Flaechen seiner Raeume mehr als 60 % jener des obersten Vollgeschosses ausmachen.**
Die freie Dachgeschossnutzung gilt bei mehreren Dachgeschossen nur ueber dem obersten
Vollgeschoss.

Weitere Abstandsregeln: Wintergaerten und abgestuetzte Balkone duerfen hoechstens **2 m** in
den grossen Grenzabstand ragen, sofern nicht mehr als 1/3 der Fassadenlaenge (§ 45 Abs. 1);
Grenzabstand fuer Unterniveaubauten **1 m**, fuer Kleinbauten **2.50 m** (§ 45 Abs. 2);
Balkone und Auskragungen bis **1.50 m** in Grenz-/Gebaeudeabstand oder ueber die Baulinie,
wenn nicht mehr als 1/3 der Gebaeudelaenge (§ 47 Abs. 1); Dachvorspruenge und Erker ebenfalls
max. **1.50 m** (§ 47 Abs. 2). Naeherbau mit Zustimmung des Nachbarn moeglich, sofern der
Gebaeudeabstand eingehalten wird (§ 46). Bebauungsplaene gehen den Vorschriften der BO vor
(§ 57 Abs. 4).

**Vorbehalt zur Aktualitaet:** Die vorliegende Fassung traegt Nachfuehrungen **bis 01.03.2016**.
Vor Verwendung in einer Bewertung ist die geltende Fassung bei der Gemeinde Baar zu
verifizieren. Der zugehoerige Zonenplan liegt als `Baar_Zonenplan_Neudruck_2012_A2_red.pdf`
bei (Neudruck 2012).

## 2.8 Datenquellen Kt. Zug (fuer die Registry)

| Quelle | Was sie liefert | Bezugsweg / Beleg |
|---|---|---|
| **ZugMap Liegenschaftsreport** | Grundstueck-Nr., E-GRID, **Grundbuchflaeche**, Flurname, und vor allem die **Bodenbedeckung in m2** (hier: Gebaeude 333 · Strasse/Weg 1 · Trottoir 62 · uebrige befestigte Flaeche 776 · Gartenanlage 526 = 1'698) | `zugmap.ch`; Report `Liegenschaftsreport-ZugMap-CH107765720687.pdf`, Druckdatum 23.06.2025, Kartenzentrum 2682060/1226758, Massstab 1:500, **1 Seite** |
| **OEREB-Kataster Kt. Zug** | Nutzungsplanung mit Zonenanteil in m2 und %, Laermempfindlichkeitsstufe, Rechtsvorschriften mit **oereblex-Links**, gesetzliche Grundlagen, zustaendige Stelle | `20250623043854_extract.pdf`, 6 Seiten, «Mapfish Print»; Auszugsnummer aba7448c-83f7-40d1-8971-d03f3f0d1925; Katasterverantwortlich: Amt fuer Grundbuch und Geoinformation, Aabachstrasse 5, 6300 Zug |
| **oereblex Zug** | Direktlinks auf die Rechtsvorschriften: Gesamtrevision Zonenplan 2005 (`/api/attachments/485`), Genehmigung Zonenplan (`/1598`), **Bauordnung Baar** (`/317`) | im OEREB-Auszug S. 3/4 |
| **BGS Zug** | PBG BGS 721.11 und V PBG BGS 721.111 als PDF | `bgs.zg.ch/frontend/versions/pdf_file_with_annex/2266` bzw. `/2495` |
| **GEAK** | Pflicht-Nachweis bei Subvention > CHF 10'000 | `geak.ch` (aus `LINKS.docx`) |

Wichtige Einschraenkung, die der ZugMap-Report selbst vermerkt: Auszüge sind **teilweise
generalisiert und nur fuer den Eigengebrauch**; rechtsverbindlich bleiben die Originaldokumente
der zustaendigen Amtsstelle, Publikation in oeffentlichen Medien bewilligungspflichtig.
Der OEREB-Auszug traegt denselben Vorbehalt («rein informativer Charakter»). Fuer eine
Bewertung darf keiner der beiden als Rechtsnachweis zitiert werden.

Der OEREB-Auszug listet zudem explizit die **nicht betroffenen** Themen (u.a. Planungszonen,
Kataster der belasteten Standorte, Grundwasserschutzzonen, Gewaesserraum, statische Waldgrenzen,
Waldabstandslinien) — fuer die Ankaufspruefung ein direkt verwertbarer Negativnachweis, mit
dem KbS-Vorbehalt, dass ein nicht eingetragenes Grundstueck **keine absolute Gewaehr** fuer
Schadstofffreiheit bietet. «Waldreservate»: noch keine Daten vorhanden.

`LINKS.docx` (06_Reglemente) enthaelt drei Arbeitslinks: PBG-Kommentar 10b Hochhaeuser
(zg.ch, mit angehaengtem `utm_source=chatgpt.com`), ZugMap-Erdwaerme-Layer (Layer-ID
6585bde8-1bc8-499c-a4b8-21ec30a0e426) und geak.ch. Weiteres Baurechtsmaterial nur eingeordnet,
nicht ausgewertet: `2737-1-15427_PBG_Teil2.pdf` (28 S., PBG-Kommentar Teil 2, u.a.
Bestandesgarantie) · `711.31-18-1.de.pdf` (Kantonaler Richtplan ZG, BGS 711.31,
Kantonsratsbeschluesse bis 29.10.2020) · `Baar_Zonenplan_Neudruck_2012_A2_red.pdf` ·
Unterordner `Brandschutz/` (VKF-Material, Korrespondenz Brandschutzplaner, BSPUB-Dokument).

---

# TEIL 3 — `04 CONTROLLING/`

## 3.1 Fall Niederhasli — Controlling-Fact-Sheet und Sensitivitaets-Methodik

Objekt: Niederhasli, Seestrasse 64, **Kat.-Nr. 2025, 1'049 m2, Zone WE2**. Kaufpreis
**CHF 1'490'000**. Kaeufer sind Privatpersonen (bewusst nicht uebernommen).

**Baurechtliche Basis:** BZO-Totalrevision 2024. Zone WE2 erlaubt **nur Ein- und
Doppeleinfamilienhaeuser**. Der bewertungsrelevante Punkt: **die Ausnuetzung wird nicht ueber
AZ oder BMZ gesteuert, sondern ueber Gebaeudeabmessungen, Hoehen und Grenzabstaende**
(IVHB-Standards implementiert, moegliche zusaetzliche Nachweispflichten wie Terrain oder
Gutachten). Das ist die Kern-Fallstricknotiz: in einer solchen Zone laesst sich das Volumen
nicht ueber eine Ziffer hochrechnen, sondern nur geometrisch — und die Gemeinde kann ueber
Ortsbildschutz nachtraeglich kuerzen.

**Kostenbasis (WKB):** Gesamtkosten **CHF 5.61 Mio.**; **Baukosten oberirdisch CHF 2'650/m2**
(bezeichnet als «marktueblich mittlerer Standard, Region ZH»). Marge **8.1 %**, im Fact Sheet
selbst als «eher knapp» bzw. «fuer Risiko eher tief» qualifiziert.

**Ertragsannahmen:** **CHF 11'000/m2 HNF** — ausdruecklich «oberes Marktsegment, nur bei
Premiumlage realistisch»; **10 TG-Plaetze à CHF 45'000** als marktgerecht bezeichnet.

**Risikoraster (5 Achsen, je mit Stufe und Begruendung)** — direkt uebertragbares Muster:
Baurecht **mittel bis hoch** (MFH in WE2 problematisch, Genehmigungsfaehigkeit fraglich) ·
Ortsbildschutz **hoch** (Gemeinde kann Ausnutzung kuerzen) · Kostensteigerung **mittel**
(Baukosteninflation und Anpassungen) · Marktrisiko **mittel** (hoher m2-Preis) ·
Genehmigungsdauer **mittel** (zusaetzliche Gutachten/Terrainabklaerungen moeglich).

**Fazit-Dramaturgie:** «Formale Grundlagen vertrauenswuerdig / solide. Wirtschaftlich
ambitioniert.» Empfehlung: Vorabklaerung mit der Gemeinde plus **alternative
Wirtschaftlichkeitsrechnung mit reduzierter Ausnutzung und konservativerem Verkaufspreis**.

### Die Sensitivitaets-Methodik (der uebertragbare Kern)

Zwei Kostenmodelle gegen dieselbe Ertragsreduktion:
- **Modell A — Kosten fix:** alle Kosten bleiben gleich, unabhaengig von der Ausnuetzung.
  Die Marge kippt entsprechend stark ins Negative.
- **Modell B — 70/30:** 70 % Fixkosten, 30 % variable Kosten proportional zur Ausnuetzung.
  Der Verlust bei Ausnuetzungsverlust faellt deutlich geringer aus.

Getestet werden drei Punkte: 0 % / -10 % / -20 % Ausnuetzung. Ertrag skaliert linear
(6'103'450 → 5'493'105 → 4'882'760, also exakt -10 % und -20 %).

Modell A (in allen Fassungen identisch):

| Ausnuetzung Δ | Ertrag CHF | Kosten A fix CHF | Marge A absolut CHF | Marge A % |
|---|---|---|---|---|
| 0 % | 6'103'450 | 5'609'411 | 494'039 | **8.09** |
| -10 % | 5'493'105 | 5'609'411 | -116'306 | **-2.12** |
| -20 % | 4'882'760 | 5'609'411 | -726'651 | **-14.88** |

Aussage: **Der Break-even liegt zwischen 0 % und -10 % Ausnuetzungsverlust.** Bei einer
Ausgangsmarge von 8.09 % und vollstaendig fixen Kosten kippt das Projekt schon bei rund
-8 % Ausnuetzung ins Minus. Das ist die eigentliche Botschaft des Instruments.

### WIDERSPRUCH: Archivfassung und Endfassung rechnen Modell B NICHT gleich

Ausdruecklich benannt, nicht geglaettet. Beide Fassungen deklarieren «70 % Fixkosten,
30 % variabel», liefern aber unterschiedliche Zahlen:

| Ausnuetzung Δ | Kosten B — Endfassung | Marge B — Endfassung | Kosten B — Archiv/Tiefanalyse | Marge B — Archiv/Tiefanalyse |
|---|---|---|---|---|
| 0 % | 5'609'411 | 494'039 / 8.09 % | 5'609'411 | 494'039 / 8.09 % |
| -10 % | **5'423'588** | **69'517 / 1.27 %** | **5'441'129** | **51'976 / 0.95 %** |
| -20 % | **5'237'764** | **-355'004 / -7.27 %** | **5'272'846** | **-390'086 / -7.99 %** |

Endfassung = `LINK/Tabelle.docx`/`.pdf`, `CONTROLLING & SENSITIVITÄT.pdf` (erstellt
04.02.2026) und `_Archiv/JANS CONTROLLING & SENSITIVITÄT PROJEKT NIEDERHALSLI.pdf`
(erstellt 11.08.2025) — alle drei tragen die **linke** Zahlenreihe.
Archivfassung = `LINK/_Archiv/Niederhasli_Szenarien_Vergleich_Quer_Vollständig.pdf` und
`LINK/Niederhasli_FactSheet_Tiefanalyse.pdf` — beide tragen die **rechte** Reihe.

**Nachgerechnet:** Bei Gesamtkosten 5'609'411 und 30 % variablem Anteil (= 1'682'823) ergibt
eine 10-prozentige Reduktion 168'282 weniger Kosten, also **5'441'129** — die Archivfassung
ist arithmetisch korrekt fuer 70/30. Die Endfassung reduziert um 185'823 bzw. 371'647, was
einem variablen Anteil von **33.1 %** entspricht, nicht 30 %. Die **ausgelieferte** Fassung
(inkl. des JANS-Decks von 2025 und 2026) traegt damit die Abweichung; die archivierte
Arbeitsfassung rechnet sauber. Die Grafik `LINK/Margenvergleich_Niederhasli.png`
(Liniendiagramm Modell A blau gegen Modell B orange, x-Achse 0 %/-10 %/-20 %, y-Achse Marge %)
zeigt Modell B bei -10 % knapp ueber null und bei -20 % bei rund -7 % — sie folgt also
ebenfalls der Endfassung und erbt die Abweichung.

Praktische Konsequenz: Der qualitative Befund (Modell B faengt den Ausnuetzungsverlust ab,
kippt aber ebenfalls vor -20 %) haelt in beiden Fassungen. Die Zahlen selbst duerfen erst
nach Bereinigung zitiert werden.

**Zweiter Widerspruch, kleiner:** `LINK/_Archiv/Sensitivitaetsanalyse_Niederhasli.docx/.pdf`
traegt die Ueberschrift «Sensitivitaetsanalyse» und rechnet **nur Modell A**
(«Kostenannahme unveraendert, da gewisse Fixkosten bestehen»), waehrend die Tabelle unter
derselben Ueberschrift in `Niederhasli_FactSheet_Tiefanalyse.pdf` («Sensitivitaetsanalyse
mit Kosteneffekten») bereits variable Kosten enthaelt, die Spalte aber neutral «Kosten (CHF)»
nennt. Wer nur die Spaltenkoepfe liest, verwechselt die Modelle. Zudem ist
`LINK/_Archiv/Niederhasli_Szenarien_Vergleich.pdf` (Hochformat) im Layout **abgeschnitten** —
die Spalten «Marge B absolut» und «Marge B» fehlen; erst die Querformat-Fassung ist
vollstaendig. Die drei Archivfassungen sind Layout-Iterationen desselben Inhalts.

## 3.2 `Juan/Oftringen/` — Wohnueberbauung Kreuzstrasse 25–39, 4665 Oftringen AG

Reales Renditeobjekt mit bewilligter Aufstockung; Herkunft: Weiterleitung eines
Treuhand-/Vermittlungspartners an JANS am **09.03.2026** (Originalmail 24.02.2026).
Verkaufsdokumentation datiert **August 2025**, 47 Seiten.

**Stammdaten:** Kataster-Nr. **196**, Grundstueckflaeche **8'639 m2**, Bauzone **Wohnzone W3
(100 %)**, Baujahr **1986**, Renovationen diverse (u.a. **2012 Heizung**), Gebaeudevolumen
**27'817 m3**, Gebaeudeversicherungswert **CHF 16'645'000**, Gemeinde Oftringen
(15'143 Einwohner per 31.12.2024). Mikrolagerating Wuest Partner **5.0 / 5.0 («exzellent»)**.
Distanzen: Einkaufen 50 m, Freizeit/Sport 100 m, Restaurant 100 m, OeV 100 m, Schule 250 m;
Zuerich 50 min, Aarau 20 min, Luzern/Baden 30 min, Basel 40 min, Bern 45 min.

**Bestand:** 46 Wohnungen (7× 2.5-Zi, 22× 3.5-Zi, 14× 4.5-Zi, 3× 5.5-Zi), Wohnflaeche
ca. **4'419 m2**, 49 Einstellplaetze innen, 12 Abstellplaetze aussen, 4 Motorradplaetze innen.

**Ertraege Bestand:** Mietzinseinnahmen **Soll CHF 746'579 netto p.a. = CHF 148/m2 p.a.** ·
**Leerstand 70.2 %** (gezielte Entmietung fuer das Entwicklungsprojekt) · Marktmiete aktuell
**CHF 888'585 netto p.a. = CHF 175/m2 p.a. (+19 %)**.

**Entwicklungspotenzial:** **+32 Wohnungen** (46 → 78; neuer Mix 14× 1.5-Zi, 24× 2.5-Zi,
30× 3.5-Zi, 10× 4.5-Zi), Wohnflaeche ca. **5'326 m2**, Mieterträge **CHF 1'533'230 netto p.a.
= CHF 264/m2 p.a. (+105 %)**.

**Die Quantil-Einordnung (das methodisch Wertvollste an diesem Dossier):**

| Ertragsstufe | CHF/m2 p.a. | Marktquantil |
|---|---|---|
| Aktuelle Vermietung | **148** | ca. **<10 %-Quantil** |
| Marktmiete Bestand | **175** | ca. **25 %-Quantil** |
| Marktmiete nach Aufstockung | **264** | ca. **90 %-Quantil** |

Diese Dreistufigkeit (Ist → Marktmiete Bestand → Marktmiete Neubauteil), jeweils gegen ein
Quantil des lokalen Marktes gestellt, ist genau die Struktur, die der Artikel
`vergleichswert-hedonisch` braucht: das Aufwertungspotenzial wird nicht behauptet, sondern
als Quantilsprung ausgewiesen — mit der impliziten Warnung, dass die Zielmiete am oberen
Rand (90 %-Quantil) liegt.

**Groessen-Preis-Gradient je Wohnungstyp** (aus `Mieterspiegel_Oftringen_Aufstockung.pdf`,
Nettomiete pro m2 NWF p.a. der 32 neuen Wohnungen):

| Wohnungstyp | Flaeche m2 NWF | Nettomiete CHF/Mt | CHF/m2 p.a. |
|---|---|---|---|
| 1.5-Zi (klein) | 30.5 | 875–925 | **344–364** |
| 1.5-Zi | 32.0–39.0 | 925–990 | **305–347** |
| 2.5-Zi | 52.0–52.5 | 1'350 | **309–312** |
| 3.5-Zi Bestand | 81.0–84.5 | 1'725 | **245–256** |
| 4.5-Zi Bestand | 93.5–94.5 | 1'900 | **241–244** |

**Der Gradient ist eindeutig und quantifiziert:** von 4.5-Zi (ca. 244 CHF/m2) zu 1.5-Zi
(bis 364 CHF/m2) steigt der Flaechenpreis um rund **50 %**. Die kleinste Einheit (30.5 m2)
erzielt den hoechsten m2-Preis. Das ist der Kern der Aufstockungs-Wirtschaftlichkeit:
nicht nur mehr Flaeche, sondern **teurere Flaeche pro m2 durch kleineren Wohnungsmix**.
Innerhalb einer Typenklasse fallen die CHF/m2 mit wachsender Flaeche (1.5-Zi: 30.5 m2 →
364 CHF/m2, 39.0 m2 → 305 CHF/m2).

**Nebenobjekte (belegte Kennwerte):**
- **Einstellhallenplaetze:** 80 Stueck, CHF **10'400/Mt** total, **CHF 124'800 p.a.**,
  ausgewiesen als **CHF 130 je Platz und Monat**.
- **Bastelraeume im UG:** 16 Stueck, 11.0–24.5 m2, CHF 65–125/Mt; **CHF 60–82/m2 p.a.**,
  Durchschnitt 205 m2 / CHF 14'940 p.a. = **73 CHF/m2 p.a.**. Der m2-Preis faellt mit der
  Groesse (11 m2 → 82 CHF/m2, 24.5 m2 → 61 CHF/m2), also derselbe Gradient wie bei den
  Wohnungen.
- Kellerabteile: pauschal 8 m2 je Wohnung, nicht separat bepreist (in der Wohnungsmiete
  enthalten).

**Gebaeudeversicherungswert je Gebaeude — CHF/m3 (Realwert-Kennwerte):**

| Gebaeude | Volumen m3 | GVW CHF | **CHF/m3** |
|---|---|---|---|
| Kreuzstrasse 25/27 | 5'586 | 3'707'000 | **664** |
| Kreuzstrasse 29/31 | 6'003 | 3'980'000 | **663** |
| Kreuzstrasse 33/35 | 5'732 | 3'769'000 | **658** |
| Kreuzstrasse 37/39 | 5'161 | 3'548'000 | **688** |
| Einstellhalle | 5'335 | 1'641'000 | **308** |
| **Total** | **27'817** | **16'645'000** | **598** |

Sehr sauberer Beleg: **Wohnbau Baujahr 1986 ≈ CHF 660/m3 GVW, Einstellhalle ≈ CHF 308/m3**,
also rund **46 %** des Wohnbauwerts. Das Mischtotal von 598 CHF/m3 waere ohne diese Trennung
irrefuehrend — genau der Grund, warum GVW/m3 immer nach Gebaeudetyp getrennt gefuehrt werden
muss.

**Kaufpreis und abgeleitete Bruttorenditen.** Der Verkaufspreis steht **nicht** in der
Verkaufsdokumentation, sondern nur in der Begleitmail vom 24.02.2026:
**CHF 26'500'000**; die Mail beziffert den Ertrag nach Umbau mit «rund CHF 1'533'000»
(deckungsgleich mit der Dokumentation) und haelt fest, dass eine **100-%-Finanzierung**
moeglich waere. Daraus abgeleitet (eigene Rechnung, kein Dokumentwert):

| Ertragsbasis | CHF netto p.a. | Bruttorendite auf CHF 26.5 Mio. |
|---|---|---|
| Soll aktuell | 746'579 | **2.82 %** |
| Marktmiete Bestand | 888'585 | **3.35 %** |
| nach Aufstockung | 1'533'230 | **5.79 %** |

Der Kaufpreis entspricht **CHF 953/m3** Gebaeudevolumen und **CHF 3'068/m2** Grundstueck; er
liegt beim **1.59-fachen** des Gebaeudeversicherungswerts. Die Investitionsthese steht und
faellt also vollstaendig mit der Realisierung der Aufstockung: ohne sie rentiert das Objekt
mit 2.8–3.4 % brutto, mit ihr mit 5.8 % — und die Aufstockungskosten sind in der
Dokumentation nicht beziffert.

**Baubewilligung (der Werttreiber, belegt):** `Baubewilligung 2025-0080, 2026-02-03.pdf`,
Gemeinde Oftringen, Abteilung Bauen Planen Umwelt, ausgestellt **02.02.2026**
(Eingangsstempel Bauherrschaft 03.02.2026), 10 Seiten. Baugesuch Nr. **2025-0080**.
Bauvorhaben: **Umbau und Aufstockung von 4 Mehrfamilienhaeusern, Erweiterung Tiefgarage,
neue Umgebungsgestaltung**, Parzelle 196, Kreuzstrasse 25/27/29/31/33/35/37/39.
**Zone W3 · AZ zulaessig 0.60 · AZ Projekt 0.80 «gemaess Art. 44 Innenentwicklung»**.
Anschluss oeffentliche Kanalisation bestehend. Oeffentliche Auflage 26.09.–27.10.2025,
**keine Einwendungen**.

Damit ist der zweite Kandidat fuer `az-gfz-kennwerte` belegt: **Oftringen AG, Zone W3,
AZ 0.60, erhoehbar auf 0.80 ueber die Innenentwicklungs-Bestimmung (Art. 44 BNO Oftringen)**
— ein Bonus von **+33 %** auf die Grundausnuetzung. Die Verkaufsdokumentation vom August 2025
sagte noch «Bewilligung im Herbst 2025 erwartet»; sie kam im Februar 2026, also mit rund
vier Monaten Verzug — ein direkt verwertbarer Erfahrungswert zur Genehmigungsdauer
(Auflage bis 27.10.2025, Entscheid 02.02.2026 = **rund 14 Wochen nach Auflageschluss** ohne
Einwendungen).

**Datenabweichung im Dossier (nicht geglaettet):** Der Mieterspiegel summiert
**CHF 1'546'560 p.a.** (Wohnungen 1'406'820 + Einstellplaetze 124'800 + Bastelraeume 14'940),
die Facts-&-Figures-Seite nennt **CHF 1'533'230 p.a.** — Differenz **CHF 13'330** (0.86 %).
Zudem ist der dort danebenstehende Einheitswert «CHF 264/m2 p.a.» aus der **Wohnungsmiete
allein** gerechnet (1'406'820 / 5'326 m2 = 264), waehrend die Gesamtzahl auch Parkierung und
Bastelraeume enthaelt. Wer 264 × Wohnflaeche rechnet, kommt nicht auf das ausgewiesene Total.

## 3.3 `Juan/Burg Ipsbach/` — zwei Bestandsobjekte, mit Preisdiskrepanz

Beide Objekte kamen mit derselben Mail vom **24.02.2026** (an JANS weitergeleitet
09.03.2026) als Angebote mit einer **100-%-Finanzierungskonstruktion**: Kaufpreis nominal,
davon Eigenmittel rechnerisch 25 %, Auszahlung an den Verkaeufer, Restauszahlung an den
Kaeufer, plus Vermittlungshonorar.

### Objekt A — 5736 Burg (Menziken) AG, Plattenhofweg

**BENENNUNGSFEHLER, ausdruecklich gemeldet:** Die Datei heisst
`Dokumentation Aarburg Plattenhofweg.pdf`, das Dokument selbst betrifft aber
**5736 BURG (MENZIKEN) AG**, nicht Aarburg. Beides sind Gemeinden im Kt. Aargau, liegen aber
rund 30 km auseinander (Burg im Wynental bei Menziken, Aarburg am Aareknie bei Olten). Auch
der uebergeordnete Ordnername `Burg Ipsbach` ist doppelt fehlerhaft: die zweite Gemeinde
heisst **Ipsach** (BE), nicht «Ipsbach». Die Mail selbst schreibt korrekt «Burg,
Plattenhofweg 9». Die Datei ist umzubenennen, bevor sie in eine Bewertung eingeht.

Factsheet der Maklerfirma, **Januar 2026**, 14 Seiten.

| Merkmal | Wert |
|---|---|
| Kataster | 4611 |
| Grundstuecksflaeche | 1'109 m2 |
| Gebaeudevolumen | **4'665 m3 (SIA 416)** |
| Gebaeudeversicherungswert | **CHF 3'170'000 (Nov. 2024)** |
| Baujahr | **1966**, saniert 1999 und 2024 |
| Einheiten | 12 Wohnungen, 12 Parkplaetze, 4 Garagen; vollvermietet |
| Mietertrag **brutto SOLL** | **CHF 235'580 p.a.** |
| Mietertrag **netto SOLL** | **CHF 204'020 p.a.** |
| Mietertrag **netto IST** | **CHF 194'472 p.a.** |
| Verkaufspreis ab | **CHF 4.1 Mio.** |
| Bruttorendite (Dokument) | **4.75 %** |

Abgeleitete Kennwerte (eigene Rechnung): **GVW CHF 679/m3** · Kaufpreis **CHF 879/m3** und
**CHF 3'697/m2 Grundstueck** · Kaufpreis = **1.29 × GVW** · Nebenkostenanteil
(brutto − netto SOLL) = 31'560 = **13.4 %** der Bruttomiete · Mietausfall/Leerstand
(netto IST gegen netto SOLL) = **4.7 %**.

**RECHENFEHLER IM FACTSHEET (nicht geglaettet):** Die ausgewiesene «Bruttorendite 4.75 %»
ist **keine** Bruttorendite. 235'580 / 4'100'000 = **5.75 %**. Der Wert 4.75 % entsteht aus
**Nettomiete IST / Kaufpreis** (194'472 / 4'100'000 = 4.74 %). Das Dokument etikettiert eine
Nettorendite als Bruttorendite — ein Prozentpunkt Unterschied. Fuer den Vergleich mehrerer
Angebote muss der Nenner jedes Mal selbst nachgerechnet werden.

**PREISDISKREPANZ Mail gegen Dokumentation (der wichtigste Befund dieses Ordners):**
Die Begleitmail nennt fuer Burg einen **Kaufpreis von CHF 7'000'000**, das Factsheet einen
**Verkaufspreis ab CHF 4'100'000**. Aufloesung: Die in der Mail als «Auszahlung Verkaeufer»
genannte Position betraegt exakt **CHF 4'100'000** — also den Betrag der Verkaeufer
tatsaechlich sieht. Der nominale Kaufpreis von 7.0 Mio. ist die auf die
Finanzierungskonstruktion aufgeblaehte Zahl, aus der zusaetzlich «Auszahlung fuer Kaeufer
max. CHF 1'150'000» und «Honorar CHF 275'000» bedient werden; die restlichen rund
CHF 1'475'000 sind in der Mail nicht zugeordnet. Der Nominalpreis liegt damit **71 % ueber
dem Angebotspreis der Maklerfirma**. Auf 7.0 Mio. gerechnet betruege die Bruttorendite noch
**3.37 %** statt 5.75 %.

**Sanierungsstau mit Ist-Kosten** (Sanierungsliste im Factsheet) — CHF 219'500 in vier Jahren
verbaut, das Objekt gilt als «kein unmittelbarer Sanierungsbedarf»:

| Jahr | Arbeiten | CHF |
|---|---|---|
| 2022 | neue Gasheizung, neuer WW-Boiler, neue Fenster ganze Liegenschaft | *nicht beziffert* |
| 2023 | Kinderspielplatz | 6'500 |
| 2024 | neue Sonnenstoren ganze Liegenschaft | 10'000 |
| 2024 | Umgebungsarbeiten, Gelaender Eingang, neue Parkplaetze | 85'000 |
| 2024 | 4 Badezimmer, Strangsanierung | 20'000 |
| 2024 | neues Schliesssystem 12 Wohnungen inkl. Briefkasten | 18'000 |
| 2024 | Malerarbeiten Treppenhaus und 6 Wohnungen komplett | 25'000 |
| 2024 | neuer Bodenbelag in 5 Wohnungen komplett | 25'000 |
| 2025 | Elektronachweise und Neuinstallation 5 Wohnungen | 5'000 |
| 2025 | 2 Wohnungen neue Bodenbelaege, neue Badezimmer | 25'000 |

Ableitbare Einheitskosten: **Badezimmer inkl. Strangsanierung ca. CHF 5'000/Stueck** (4 für
20'000) · **Malerarbeiten Wohnung komplett ca. CHF 4'200/Stueck** (6 Whg + Treppenhaus für
25'000) · **Bodenbelag Wohnung komplett ca. CHF 5'000/Stueck** (5 für 25'000) ·
**Schliesssystem inkl. Briefkasten ca. CHF 1'500/Wohnung**. Das sind guenstige, klar auf
Mieterwechsel-Standard kalkulierte Saetze; fuer eine Ankaufspruefung ist das ein Signal,
dass hier kosmetisch und nicht substanziell saniert wurde. **Der einzige nicht bezifferte
Posten (2022: Heizung, Boiler, Fenster gesamt) ist zugleich der teuerste** — die
Sanierungsliste ist damit unvollstaendig als Kostenbeleg. Zusaetzlich: Die 2022 eingebaute
Anlage ist eine **Gasheizung**, also fossil und in der Restnutzungsdauer regulatorisch,
nicht technisch begrenzt.

Weiteres Belegmaterial im Dossier, nur eingeordnet (Bildseiten ohne Textebene):
Katasterauszug · Grundbuchauszug (5 Seiten, mit Dienstbarkeiten und Pfandstellen) ·
Mieterspiegel (2 Seiten) · Gebaeudeversicherungsausweise · Nebenkostenzusammenstellung ·
Verteilung Nebenkosten pro Mieter. Die Mieterdaten wurden bewusst nicht ausgewertet.
Disclaimer der Maklerfirma: das Factsheet ist ausdruecklich **kein Referenzdokument fuer
Anlageentscheide**, kein Angebot, kein Emissionsprospekt und keine verlaessliche Grundlage
fuer den Kaufvertrag.

### Objekt B — Ipsach BE (Vorort von Biel, rechtes Seeufer Bielersee)

Dokumentation 7 Seiten, ueberwiegend Bildseiten ohne Textebene (per Rendering gelesen).

| Merkmal | Wert |
|---|---|
| Baujahr | **1972**, gepflegter Zustand |
| Geschosse | 3 + UG, **kein Lift** |
| Vermietbare Flaeche | **964 m2** |
| Gebaeudeversicherungswert 2025 | **CHF 3'000'000** |
| Einheiten | 17 Wohnungen (1- bis 4-Zimmer), 6 Einzelgaragen, 15 Aussenparkplaetze |
| Nettomiete SOLL/IST | **CHF 211'176 p.a.** |
| Leerstand | **7 %** (Vermietungsquote 93 %) |
| Heizung | **Oel (1999)** |
| Grundstueck | **2'083 m2** |
| Zone | **Wohnzone W3**, **Ausnuetzungsziffer 0.85** |
| Ausbaupotenzial | **ca. 400 m2** (Dachaufstockung / Kellerausbau / Ersatzneubau moeglich) |
| Kaufpreis (nur aus der Mail) | **CHF 6'750'000** |

**Standortqualitaet und Marktbezug (der methodisch wertvolle Teil):**
- **Standortqualitaet gemaess Wuest Partner: 2.9 / 5** — deutlich unter Oftringen (5.0/5.0).
- **Leerstandsziffer MFH im Ort: Ø 1.5 %** gegen **7 % im Objekt** — der Leerstand ist
  objekt-, nicht marktbedingt.
- **Nettomiete Ipsach Ø: CHF 201/m2/Jahr**; das Objekt erzielt 211'176 / 964 =
  **CHF 219/m2/Jahr**, also rund **9 % ueber dem Ortsdurchschnitt**.
- **«Aktuelle Mieten im 90 %-Quantil»** — ausdruecklich vermerkt. Das ist die entscheidende
  Aussage: **hier gibt es praktisch kein Mietsteigerungspotenzial**, im Gegensatz zu
  Oftringen (dort <10 %-Quantil). Bei gleichzeitig 7 % Leerstand deutet das auf eine
  ueberzogene Mietpreisstellung hin.
- **Kaufpreis Eigentumswohnungen im Ort Ø CHF 6'320/m2** — als Referenz fuer eine
  Abparzellierungs-/STWEG-Strategie.

Abgeleitete Kennwerte (eigene Rechnung): Bruttorendite auf den Mailpreis von CHF 6'750'000 =
**3.13 %**; auf die «Auszahlung Verkaeufer» von CHF 4'500'000 = **4.69 %**. GVW je m2
vermietbare Flaeche = **CHF 3'112/m2**; Kaufpreis (Mail) = **2.25 × GVW**;
Kaufpreis je m2 vermietbare Flaeche = **CHF 7'002/m2**, also **11 % ueber** dem
Ortsdurchschnittspreis fuer Wohneigentum (6'320/m2) — und das fuer ein Renditeobjekt von
1972 ohne Lift. Auch hier gilt die Preisdiskrepanz-Logik von Burg: die Konstruktion nennt
6.75 Mio. nominal, dem Verkaeufer fliessen 4.5 Mio. zu.

**Instandhaltungs-Historie:** bis 2012 vier Wohnungsrenovationen (Kuechen und Baeder);
ab 2013 **72 neue Fenster (3-fach)**, 12 Baeder und 13 Kuechen erneuert, neue Bodenbelaege,
Malerarbeiten Treppenhaus und Keller, neue Waschmaschine und Tumbler, Garagentore und
Betonpfeiler, Technik (Expansionsgefaess, Wasserpumpe, Messgeraet). Untergeschoss mit Wasch-,
Technik-, Lager- und Veloraum; Gemeinschaftsgarten; **Estrich nicht ausgebaut** (Bezug zum
Ausbaupotenzial von 400 m2). Kein Lift bei 3 Vollgeschossen ist der wesentliche
strukturelle Mangel.

**Der offene Punkt bei beiden Objekten:** Weder Burg noch Ipsach nennen im Dokument
Dienstbarkeiten oder Pfandstellen im Klartext — beim Burg-Dossier liegen fuenf Seiten
Grundbuchauszug als Bildseiten bei, die vor einem Kaufentscheid einzeln auszuwerten sind.
Bei Ipsach fehlt ein Grundbuchauszug im Dossier ganz.

## 3.4 Ordnungsbefunde in `04 CONTROLLING/`

- Drei Dateien liegen **doppelt**: `Mieterspiegel_Oftringen_Aufstockung.pdf`,
  `Verkaufsdokumentation_Oftringen.pdf` und `Baubewilligung 2025-0080, 2026-02-03.pdf`
  jeweils sowohl direkt in `Juan/` als auch in `Juan/Oftringen/`.
- `CONTROLLING & SENSITIVITÄT.pdf` (04.02.2026) ist inhaltsgleich mit
  `_Archiv/JANS CONTROLLING & SENSITIVITÄT PROJEKT NIEDERHALSLI.pdf` (11.08.2025); geaendert
  hat sich nur die Position des JANS-Logos auf den Titelseiten. Die aeltere Fassung ist als
  «250811 JANS CONTROLLING & SENSITIVITÄT» bereits in die KB eingearbeitet — die neuere
  bringt inhaltlich **nichts Neues**.
- Die Ordnernamen `Juan` und `Burg Ipsbach` sind Personen- bzw. fehlerhafte Ortsnamen und
  folgen nicht der Dateinamen-Konvention (kein Datums-Prefix, Tippfehler «Ipsbach»).

# TEIL 4 — `05 MASSAUFNAHMEN/` und `_Vorlage/`

`find`-Befund: **`05 MASSAUFNAHMEN/` enthaelt genau ein Objekt**, `0105_01_PFAFFHAUSEN`
(Saentisstrasse 2). Kein weiteres Objekt.

## 4.1 Raumprogramm Pfaffhausen — Flaechensystematik und SIA-416-Pruefung

Quelle: `06 Raumprogramm/260217 0105_01_PFAFFHAUSEN_RAUMPROGRAMM.xlsx`, Blatt `Tabelle1`,
Kopf «JANS / 0105_01_PFAFFHAUSEN / **Stand 17.02.2026**». Nur zwei Flaechenspalten:
**D «Nebennutzflaeche m2»** und **E «HNF m2»**.

| Stockwerk | Raum | NNF m2 | HNF m2 |
|---|---|---|---|
| 1 — UG | Familienzimmer | | 24.5 |
| | Waesche | | 10.0 |
| | **Total STWE-1** | **0.0** | **34.5** |
| 2 — EG | Garage | 30.0 | |
| | Waesche | | 10.2 |
| | Kueche | | 10.3 |
| | **Flur** | | **22.8** |
| | Bad | | 4.8 |
| | Esszimmer | | 20.6 |
| | Wohnzimmer | | 14.8 |
| | **Total STWE-2** | **30.0** | **83.5** (Formel `=SUM(E18:E23)`) |
| 3 — 1. OG | Schlafzimmer | | 14.5 |
| | Ankleide | | 10.8 |
| | Medienraum | | 10.8 |
| | Bad | | 4.8 |
| | **Gang** | | **4.6** |
| | **Flur** | | **19.2** |
| | Schlafzimmer | | 16.3 |
| | Schlafzimmer | | 11.8 |
| | **Total STWE-3** | **0.0** | **92.8** |
| 4 — Estrich | Estrich | 57.5 | |
| | **Total Estrich** | **57.5** | **0** |
| **Total** | Nebennutzflaeche Garage und Estrich | **87.5** | |
| **Total** | **Hauptnutzflaeche (HNF)** | | **210.8** |
| | **Total Nutzflaeche Haus** | **298.3 m2** | |

Arithmetik durchgehend korrekt (34.5 + 83.5 + 92.8 = 210.8; 30.0 + 57.5 = 87.5;
210.8 + 87.5 = 298.3). Nur eine der drei Stockwerks-Summen ist als Formel hinterlegt,
die uebrigen sind Hartwerte — dieselbe Schwaeche wie beim Biel-Wertquotenblatt.

### KRITISCHE PRUEFUNG gegen SIA 416 — die Zuordnung haelt nicht

**Strukturbefund:** Das Blatt kennt nur zwei Kategorien (NNF und HNF). Die
SIA-416-Systematik gliedert die Nettogeschossflaeche dagegen in **Nutzflaeche (NF) +
Verkehrsflaeche (VF) + Funktionsflaeche (FF)**, wobei die NF sich in HNF und NNF teilt.
**Verkehrsflaeche und Funktionsflaeche fehlen im Blatt vollstaendig** — es gibt keine Spalte,
in die eine Erschliessungsflaeche ueberhaupt eingetragen werden koennte. Damit landet alles
Nicht-Nebennutzbare zwangslaeufig in der HNF.

**Konkret in der HNF, obwohl Erschliessung:**

| Raum | Geschoss | m2 |
|---|---|---|
| Flur | EG | 22.8 |
| Flur | 1. OG | 19.2 |
| Gang | 1. OG | 4.6 |
| **Summe Erschliessung in der HNF** | | **46.6** |

**Das sind 22.1 % der ausgewiesenen HNF von 210.8 m2.** Werden diese Flaechen als
Verkehrsflaeche ausgeschieden, sinkt die HNF auf **164.2 m2** — die deklarierte HNF ist
also um rund ein Viertel zu hoch. Bei einer Bewertung auf CHF/m2 HNF ist das der Unterschied
zwischen zwei ganz verschiedenen Zahlen.

**Zweiter, kleinerer Punkt:** Die beiden Waschraeume (UG 10.0, EG 10.2 = 20.2 m2) sind
ebenfalls als HNF gefuehrt. Waschen ist eine die Hauptnutzung ergaenzende Nebennutzung;
diese Zuordnung ist mindestens pruefbeduerftig. Werden auch sie umgehaengt, betraegt die
HNF **144.0 m2** statt 210.8 — eine Abweichung von **46.7 %** gegenueber dem ausgewiesenen
Wert.

**Vorbehalt gemaess Rule `normen-referenz`:** Die genaue Kategorienzuordnung (insbesondere
wohnungsinterne Flure und Waschraeume) ist vor Verwendung an der Originalnorm SIA 416 bzw.
ueber die KB `wissen/normen` zu verifizieren; hier wird die **Struktur** beanstandet
(fehlende VF-/FF-Kategorie und die daraus folgende Sammelzuordnung), nicht eine Ziffer
zitiert. Der quantifizierte Befund — 46.6 m2 Erschliessungsflaeche in der HNF — steht
unabhaengig davon.

**Dritter Befund:** Der Estrich (57.5 m2) ist vollstaendig als Nebennutzflaeche gefuehrt,
obwohl er nach dem Matterport-Befund zu **12.3 m2 aus Flaeche mit Kopfhoehe unter 1.5 m**
besteht (siehe 4.2). Und das «Familienzimmer» im UG (24.5 m2) ist als **Hauptnutzflaeche**
gefuehrt, obwohl Matterport dort eine **lichte Raumhoehe von 1.96 m** gemessen hat —
fuer einen Aufenthaltsraum eine Hoehe, die in den meisten kantonalen Bauordnungen die
Anrechenbarkeit als Wohnraum ausschliesst. Beides ist vor einer Bewertung zu klaeren.

Nebenbefund: Zelle C41 enthaelt den Tippfehler «GRAGE» statt «GARAGE».

## 4.2 Matterport — was es liefert und was es auslaesst

Quelle: `05 Download Matterport/2Sntisstrasse_ikqtsk4d2sr6rr20zseg1yk7b.pdf` (1 Seite,
2896 x 2048 pt, reine Grafik ohne Textebene — per Rendering gelesen) und der zugehoerige
CSV-Export `05 Download Matterport/_Archiv/2 S ntisstrasse.csv`. Walkthrough-Link
(`Link walk throu.docx`): `my.matterport.com/show/?m=vn233oYbHDx`.

**Was Matterport liefert:**
- Massstaebliche Grundrisse aller vier Stockwerke mit Raumbezeichnungen und
  **Raummassen (Breite x Laenge)**.
- Je Stockwerk die **Bruttoinnenraum-Flaeche**.
- Im CSV je Raum zusaetzlich: **lichte Raumhoehe**, **Flaeche** und **Flaeche mit Waenden**,
  Stockwerkzuordnung und Lage (Innen-/Aussenbereich).
- Export in PDF, SVG, PNG, DWG und CSV (im Fall Biel zusaetzlich als DWG-Paket).

**Die Flaechenbilanz auf dem Plan (woertlich):**

| Position | m2 |
|---|---|
| Bruttoinnenraum Stockwerk 1 | 36.0 |
| Bruttoinnenraum Stockwerk 2 | 78.7 |
| Bruttoinnenraum Stockwerk 3 | 88.0 |
| Bruttoinnenraum Stockwerk 4 | 45.2 |
| **Insgesamt** | **247.9** |
| *Ausgelassen:* Garage | 28.1 |
| *Ausgelassen:* Balkon | 8.6 |
| *Ausgelassen:* reduzierte Kopffreiheit | 12.3 |

**Was Matterport auslaesst — und das ist die entscheidende Information:**
1. **Garage** (28.1 m2) — nicht im Total.
2. **Balkon** (8.6 m2) — nicht im Total.
3. **Reduzierte Kopffreiheit** (12.3 m2) — Flaeche unter der Kopfhoehen-Schwelle, auf dem
   Plan im Stockwerk 4 durch gestrichelte Linien mit der Beschriftung **«< 1.5 m»**
   abgegrenzt. Matterport rechnet also mit einer **1.5-m-Grenze**, nicht mit den 1.5/2.4 m
   der Schweizer Anrechnungspraxis.
4. Keine Aussenmasse, keine Gebaeudehuelle, kein Volumen, keine Konstruktionsflaeche —
   Matterport misst nur den erfassbaren Innenraum.
5. Offene Bereiche werden **zu einem Raum zusammengefasst**: im EG fasst der CSV-Export
   Flur, Esszimmer und Wohnzimmer zu einem einzigen «Wohnzimmer» von 48.5 m2 zusammen,
   und Raeume ohne erkennbare Funktion erscheinen als «Sonstiges» oder «Allzweckraum».
   Die funktionale Gliederung des Raumprogramms muss also von Hand nachgezogen werden.

**Genauigkeit und Vorbehalt:** Der Plan traegt woertlich den Vermerk **«ANGABEN OHNE
GEWAEHR»**. Ein Aufmass aus dem Matterport-Scan ist damit ausdruecklich keine
verbindliche Vermessung. Die gemessenen Raumhoehen streuen stark und plausibel
(1.96 m bis 2.78 m), was fuer eine reale Messung spricht, aber Deckenversprünge und
Unterzuege koennen die Angabe je Raum verzerren.

**Verhaeltnis Matterport-Total zum Raumprogramm — die Kontrollrechnung:**

| Vergleich | Matterport | Raumprogramm | Delta |
|---|---|---|---|
| Stockwerk 1 (UG) | 36.0 (brutto innen) | 34.5 (Raumsumme) | -1.5 plausibel |
| Stockwerk 2 (EG), ohne Garage | 78.7 (brutto innen) | 83.5 (Raumsumme) | **+4.8 unplausibel** |
| Stockwerk 3 (1. OG) | 88.0 (brutto innen) | 92.8 (Raumsumme) | **+4.8 unplausibel** |
| Stockwerk 4 (Estrich) | 45.2 + 12.3 = **57.5** | **57.5** | **0.0 exakt** |
| Garage | 28.1 (ausgelassen) | 30.0 | +1.9 |
| **Total Haus** | 247.9 + 28.1 + 12.3 = **288.3** | **298.3** | **+10.0** |

Drei Schluesse:
- **Der Estrich stimmt auf 0.1 m2 genau ueberein — und zwar nur, wenn man die 12.3 m2
  reduzierte Kopffreiheit MITZAEHLT** (45.2 + 12.3 = 57.5). Das ist der harte Beleg dafuer,
  dass das Raumprogramm die Flaeche unter 1.5 m Kopfhoehe voll in die Nebennutzflaeche
  einrechnet. Fuer eine Bewertung ist diese Flaeche nicht nutzbar.
- **In EG und 1. OG uebersteigt die Raumsumme des Raumprogramms den Bruttoinnenraum um
  je 4.8 m2.** Eine Summe von Raum-Nettoflaechen kann rechnerisch nicht groesser sein als
  die Bruttoinnenflaeche desselben Geschosses (die Innenwaende sind darin enthalten). Der
  gleiche Betrag in beiden Geschossen deutet auf eine systematische Ursache hin — vermutlich
  wurden einzelne Raeume aus der Spalte «Flaeche mit Waenden» statt «Flaeche» uebernommen.
  Zu klaeren, bevor die Zahlen verwendet werden.
- Das Raumprogramm liegt in Summe **10.0 m2 (3.4 %) ueber** dem um Garage und
  Kopffreiheit ergaenzten Matterport-Total.

## 4.3 Uebrige Inhalte Pfaffhausen — und ein Ordnungsbefund

- `03 PLAN/` enthaelt **keine eigenen Plaene**, sondern einen leeren Unterordner
  **`2602 BIEL`** und `link/WhatsApp Image 2026-01-30 at 21.31.05.jpeg` — beides
  unveraenderte Reste aus dem Biel-Projektordner.
- `04 Grundlage/` spiegelt exakt die Biel-Struktur (`00 GIS`, `00 Geodienste`, `00 Maria`,
  `00 Matterport`, `00 Verkaufsunterlagen`) und ist **vollstaendig leer**.
- `01 Reglement/` und `02 Wertquotenberechnung/` sind ebenfalls leer.
- **`00 Administration/00 INFOS/_Infos.docx` enthaelt woertlich «Ernst-Schuelerstrasse 41 /
  2502 Biel»** — die Adresse des Biel-Projekts, nicht die des Objekts in Pfaffhausen.

Der Pfaffhausen-Ordner ist also eine **Kopie des Biel-Ordners**, bei der die Biel-Reste nicht
bereinigt wurden. Fuer die Identifikatoren-Disziplin ist das ein konkretes Risiko: wer
`_Infos.docx` als Stammdatenquelle liest, uebernimmt die falsche Adresse.

Weiteres, nur eingeordnet: `00 BH KORRESPONDENZ/260216 Grundlagen/` enthaelt
Matterport-Beispielmaterial zur Leistungsklaerung mit der Bauherrschaft
(`CHF15_floorplanSample/` mit Composite-PDF und SVG sowie `MP_COMMERCIAL_REAL_ESTATE/` mit
DWG, DXF, RCS-Punktwolke und CTB-Plotstil) — also die Musterlieferung, an der der
Leistungsumfang des Aufmasses vereinbart wurde. Administrativa: Angebot `an-00036.pdf`,
Auftrag `au-00018.pdf`, Gutschrift `gs-00006.pdf`; die Ordner `02 AUFTRAGSBESTAETIGUNG`
und `04 LIEFERSCHEIN` sind leer.

## 4.4 `_Vorlage/260611-Checkliste-Kauf-Liegenschaft/` — die JANS-Checkliste

DOCX + PDF, 2 Seiten, Fusszeile «Raphael Jans Architekten ETH SIA - rj@raphaeljans.ch -
**11.06.26**». Selbstdeklaration: «Bereinigte Uebersicht aller Themen aus dem Merkblatt
'Kauf von Liegenschaften' des **HEV Schweiz (2026)**. Gilt fuer Privatliegenschaften als
Hauptwohnsitz.» Aufbau: Seite 1 Themenuebersicht in fuenf Bloecken, Seite 2 die eigentliche
Checkliste mit Ankreuzfeldern.

**Finanzierungsregeln (belegt, Seite 1 und 2):**

| Groesse | Wert |
|---|---|
| **Tragbarkeit** | Wohnkosten inkl. Amortisation und Unterhalt **max. 1/3 des Nettoeinkommens** |
| **Eigenmittel** | mind. **20 %** des Kaufpreises, davon mind. **10 % nicht aus der 2. Saeule** |
| **Belehnung** | max. **80 %** des Kaufpreises per Hypothek |
| **Kalkulatorischer Zins** | **4.5 bis 5.0 %** |
| **Amortisation** | auf **2/3 des Belehnungswertes innert 15 Jahren** (jaehrlich 1–1.25 %) |
| **Nebenkosten** | **mindestens 1 %** des Kaufpreises p.a. |

**Entscheidschwelle (die JANS-eigene Zuspitzung):** «Individuelle Checkliste. Anforderungen
definieren; **ab 70 bis 80 % Erfuellung kaufen**.» Das ist die einzige quantifizierte
Kaufentscheidregel im ganzen Cluster und stammt nicht aus der HEV-Systematik, sondern aus
der Verdichtung.

**Die fuenf Pruefbloecke:** (1) Finanzierung und Tragbarkeit · (2) Preis und Objekt ·
(3) Vertrag und Abwicklung · (4) Uebergabe und Uebergang · (5) Steuern und Gebuehren.

**Der TDD-Block der Checkliste — direkt anschlussfaehig an Teil 2:** Zustandsbericht Dach,
Heizung, Sanitaer, Elektro · **Kanal-TV-Bericht der Grundleitungen** · **Elektro-
Sicherheitsnachweis (NIV)** aktuell? · **Energiebericht / GEAK mit Sanierungsfahrplan** ·
Unterhalts- und Nebenkostenabrechnungen **der letzten 5 Jahre** · **Investitionsbedarf als
CapEx-Fahrplan nach BKP** · TDD durch Fachperson, falls Bericht fehlt.

**Der Baurechts-Block:** Baubewilligungsakten des Bestands einsehen · OeREB-Auszug,
Zonenplan, Baureglement beschaffen · **Ausnuetzung, Uebernutzung, Besitzstand belegen** ·
**Eingriffstiefe: Was loest eine Baueingabe aus?** · Brandschutz, Schallschutz, Parkplaetze,
Energie · foermliche Voranfrage bei der Gemeinde. Das ist exakt die Fragenkette, die der
Fall Baar (Teil 2) durchgespielt hat.

Weitere Blockinhalte, verdichtet: Verkaufsdokumentation (Plaene, **Grundbuchauszuege inkl.
Dienstbarkeiten**, Kauf-/Werkvertraege, **Protokolle der STWE-Versammlungen**, Alter und
Bausubstanz, Lage/Schulen/Infrastruktur/**Steuerfuss**) · Maklervertrag (Entschaedigung,
Faelligkeit, Kuendigungsfrist) · Anzahlung (Vorvertraege muessen oeffentlich beurkundet
sein, Bonitaet des Verkaeufers, **Sperrkonto**) · Kaufvertrag (Notarsentwurf,
Gewaehrleistungsausschluss, **SIA-Norm-Verweise gelesen und verstanden**, zugesicherte
Eigenschaften) · Uebergabe (Neubau gereinigt, Bestand besenrein; Nutzen und Gefahr;
**Heizoeltank-Inhalt gehoert dem Verkaeufer**) · **Erneuerungsfonds STWE geht mit dem
Eigentum ueber, Kontostand kennen** · Mietvertraege gehen von Gesetzes wegen ueber ·
Handaenderungssteuer (kantonal, meist Erwerber) · **Grundstueckgewinnsteuer: Sicherstellung
verlangen wegen des gesetzlichen Pfandrechts** · Steueraufschub bei Ersatzbeschaffung,
auch bei Ersatzkauf **vor** dem Verkauf.

Die beiden STWE-Bezuege (Erneuerungsfonds-Kontostand, Versammlungsprotokolle) verbinden
diese Checkliste direkt mit Teil 1: die dort belegte Aeufnungsregel von **0.5 % des
Gebaeudeversicherungswertes p.a.** ist der Massstab, an dem sich ein vorgefundener
Fondsstand messen laesst.

## 4.5 `_Vorlage/hef.ch/kauf_von_liegenschaften_11_gesch_tzt.pdf` — die Quelle

**Fassung:** Merkblatt «Kauf von Liegenschaften» des **Hauseigentuemerverbands Schweiz**,
Copyright-Vermerk auf jeder Seite **«© Hauseigentuemerverband Schweiz, 2026»**, 13 Seiten,
PDF erzeugt am **15.05.2026** aus dem HEV-Formularportal (Dokumenttitel
`hev-forms-production.panter.biz`), **kopiergeschuetzt** (AES-256, Drucken erlaubt,
Kopieren gesperrt). Die JANS-Checkliste (11.06.2026) ist also rund vier Wochen nach dem
Bezug der Quelle entstanden. Danebenliegend `Bestellung_3000223100.pdf` als Beleg des
Bezugs (Administrativum). **Der Ordnername `hef.ch` ist vermutlich ein Vertipper fuer
`hev.ch`** — Herausgeber ist der HEV Schweiz.

**Vermerkte Rechtsaenderungen — der eigentliche Grund, diese Fassung zu fuehren:**

**(a) Gewaehrleistung, Revision des Obligationenrechts per 1. Januar 2026.** Drei Punkte,
alle mit demselben Uebergangsregime (nur fuer Vertraege **ab** 01.01.2026; frueher
geschlossene Vertraege unterstehen grundsaetzlich dem alten Recht):
- **Ruegefrist 60 Tage** nach Entdeckung, vertraglich **nicht verkuerzbar**; unterlassene
  Ruege gilt als Genehmigung des Mangels.
- **Zwingendes unentgeltliches Nachbesserungsrecht**, das vertraglich **nicht mehr
  ausgeschlossen** werden kann. Es gilt nicht nur fuer Bauwerkvertraege, sondern auch beim
  Kauf von Grundstuecken mit Neubauten, die noch zu errichten sind **oder innerhalb der
  letzten zwei Jahre vor dem Verkauf erstellt wurden**. Ausdruecklich profitieren davon auch
  Stockwerkeigentuemer, die eine Neubauwohnung im Erstbezug nicht ab Plan, sondern **maximal
  zwei Jahre nach Errichtung** kaufen.
- Die Freizeichnung (Gewaehrleistungsausschluss) bleibt im Uebrigen zulaessig und ist bei
  Bestandesbauten weit verbreitet; die Rechtsprechung setzt ihr aber Grenzen. Empfehlung:
  Begutachtung durch eine Fachperson **vor** Vertragsabschluss, damit Maengel und
  Behebungskosten in die Preisverhandlung einfliessen.
- **Abgrenzung SIA 118:** Wird im Kaufvertrag auf die Gewaehrleistungsregeln der SIA 118
  verwiesen, ersetzen diese die gesetzlichen Maengelrechte. Dann gilt statt der 60-Tage-Frist
  eine **zweijaehrige Ruegefrist ab Abnahme**; danach koennen fuer **weitere drei Jahre** nur
  noch verdeckte Maengel geruegt werden, diese wiederum **innert 60 Tagen nach Entdeckung**.
  Die Maengelruege unterbricht die Verjaehrung **nicht**; der Anspruch muss innerhalb der
  Verjaehrungsfrist eingeklagt werden.
- **Zugesicherte oder absichtlich verschwiegene Eigenschaften: Verjaehrung zehn Jahre.**

**(b) Eigenmietwert — Systemwechsel.** Am **28.09.2025** hat das Stimmvolk mit **57.7 %**
eine Verfassungsaenderung angenommen, die den Kantonen die Kompetenz gibt, eine Objektsteuer
auf ueberwiegend selbstgenutzten **Zweit**liegenschaften einzufuehren; daran gekoppelt war das
Bundesgesetz ueber den Systemwechsel bei der Wohneigentumsbesteuerung, das die Pflicht zur
Besteuerung der Eigennutzung aufhebt. **Inkrafttreten fruehestens 1. Januar 2028**; ein
genaues Datum lag zum Druckzeitpunkt nicht vor. Mit Inkrafttreten entfallen gleichzeitig
die bestehenden Abzuege: **Unterhaltskosten, Versicherungspraemien, Instandstellungskosten
bei neu erworbenen Liegenschaften und Verwaltungskosten koennen kuenftig nicht mehr
abgezogen werden**; der Abzug fuer energetische Sanierungen wird eingeschraenkt.
Bis dahin gilt der Eigenmietwert weiter, im Erwerbsjahr **anteilmaessig** fuer die Dauer
der Nutzung.

Bewertungsrelevanz von (b): Der Wegfall des Unterhaltsabzugs veraendert die
Nach-Steuer-Rechnung fuer selbstgenutztes Wohneigentum und damit die Zahlungsbereitschaft —
mit einem Zeithorizont ab fruehestens 2028. Bis dahin ist jede Nach-Steuer-Betrachtung
in einer JANS-Bewertung mit dem Vorbehalt des angekuendigten Systemwechsels zu versehen.

## 4.6 `_Vorlage/02 Stockwerkeigentum/` — der STWE-Vorlagensatz (Einordnung)

Vollstaendiger Vorlagensatz, die inhaltlich ausgewerteten Teile stehen in Teil 1
(Wertquoten-Vorlage 1.3, Begruendungs-Doktrin 1.6, Musterreglement-Herkunft 1.7). Struktur:
`00 Administration/` (Factsheet «Teilungsplan Vorgehen» 251027 und 260112 als PDF+INDD;
Offerten/Rechnungen; **`03 Checkliste ST/Checkliste_STWEG_Begruendung_WOMA.docx/.xlsx`**;
`10 ChatGPT/` mit den Ebmatingen-Arbeitsstaenden) · `00 Begruendungsakt/` (die Doktrin plus
zwei amtliche Quellen: «Die Begruendung des Stockwerkeigentums — Ihre Notariate im Kanton
Zuerich» und «Merkblatt Begruendung Stockwerkeigentum») · `01 Aufteilungsplan/` (Referenz-
Teilungsplaene, der Bundes-Leitfaden **«Empfehlung DigDokSTWE»** in 63 Einzelseiten mit der
**Planvorlage auf Seite 45**, Factsheet Plandarstellung, ArchiCAD-Vorlage
`Vorlage_EBMATINGEN_01_Zuerichstr_113_115_HNF.pln` mit Grundriss-Grundlagen und
`02 Flaechenangaben/113 Wohnungsspiegel.xlsx`) · `02 Wertquotenberechnung/` (Vorlage +
Archiv + `_Vorlage/Wertquotenberechnung final Grundbuch.pdf`) · `03 Reglement/`
(Lang-/Kurzfassung, Leitfaden, Vorlagen Biel und Ebmatingen).

Bemerkenswert fuer die Methodik: Die ArchiCAD-Vorlage traegt im Namen ausdruecklich **«HNF»** —
die Aufteilungsplan-Flaechen werden also bewusst als Hauptnutzflaeche gefuehrt, was die
Flaechendefinition aus 1.5 (Summe der Raum-Nettoflaechen innerhalb des Sonderrechts)
bestaetigt. Die Datei `02 Wertquotenberechnung/_Vorlage/Wertquotenberechnung final
Grundbuch.pdf` markiert den Zielzustand: die Wertquotentabelle in der Fassung, die ins
Grundbuch geht.

---

# ZUSAMMENFASSUNG DER WIDERSPRUECHE UND FEHLER (Sammelstelle)

Alle in diesem Lauf gefundenen inhaltlichen Bruecke, nach Schwere geordnet:

1. **Biel-Reglement Ziff. 1.1** nennt «Gemeinde Maur, Grundstueck Nr. 8709» statt Biel /
   1894 — in DOCX und PDF, in der Bestimmung, die den Gegenstand des Stockwerkeigentums
   definiert. Vor Beurkundung zu bereinigen.
2. **Biel Dachgeschoss 1894-6:** Teilungsplan und Uebersicht 65.0 m2, Wertquotenberechnung
   99.3 m2 (Delta 34.3 m2) — bei gleichem Datum 01.02.2026. Die Wertquote von 100/1000
   haengt daran.
3. **Biel Keller 1894-1:** 5.8 gegen 13.5 m2 zwischen zwei Fassungen desselben Datums.
4. **Biel Wertquoten-Faktoren** sind rueckwaerts auf runde Zielquoten kalibriert, nicht aus
   einem Regime abgeleitet (7 von 7 Einheiten treffen die Zielquote auf zwei Stellen).
5. **Ebmatingen:** zwei Dateien gleichen Namens mit verschiedenem Perimeter (113+115 gegen
   113 allein); dieselbe Wohnung erhaelt Quote 87 bzw. 178. Zusaetzlich Zelle F47:
   13.9 Punkte statt 4.08 (Tippfehler).
6. **Niederhasli Modell B:** ausgelieferte Fassung und Archivfassung rechnen verschieden;
   die ausgelieferte unterstellt faktisch 33.1 % variable Kosten, deklariert aber 30 %.
   Die Grafik folgt der ausgelieferten Fassung.
7. **Burg AG Factsheet:** «Bruttorendite 4.75 %» ist in Wahrheit Nettomiete IST / Kaufpreis;
   die Bruttorendite betraegt 5.75 %.
8. **Burg AG Preisdiskrepanz:** Mail nennt CHF 7'000'000, Factsheet CHF 4'100'000
   (= die «Auszahlung Verkaeufer» der Mail). Nominalpreis 71 % ueber Angebotspreis.
9. **Dateibenennung:** `Dokumentation Aarburg Plattenhofweg.pdf` betrifft **Burg (Menziken)
   AG**, nicht Aarburg; Ordner `Burg Ipsbach` statt Ipsach; Ordner `hef.ch` statt hev.ch.
10. **Pfaffhausen Raumprogramm:** 46.6 m2 Erschliessungsflaeche (22.1 %) in der HNF; EG und
    1. OG uebersteigen den Matterport-Bruttoinnenraum um je 4.8 m2; Estrich zaehlt 12.3 m2
    Flaeche unter 1.5 m Kopfhoehe voll mit; UG-«Familienzimmer» mit gemessener Raumhoehe
    1.96 m als HNF gefuehrt.
11. **Pfaffhausen `_Infos.docx`** enthaelt die Biel-Adresse; der ganze Ordner ist eine
    unbereinigte Kopie des Biel-Ordners (inkl. leerem Unterordner «2602 BIEL»).
12. **Baar 38-Grad-Offerte:** Elektro gleichzeitig im Leistungsumfang und unter «nicht
    enthaltene Gewerke»; Wasseranalysen in der Honorartabelle und zugleich «nicht im
    Angebot eingerechnet».
13. **Baar GP-Offerte:** Brandschutz-Massnahmenkatalog auf «Zugerstrasse 46» statt 49
    ueberschrieben; Waermeerzeugung als «Oelheizung» typisiert, obwohl es eine Gasheizung
    ist; Anschreiben 28.06.2025, Fusszeile durchgehend 21.03.2025.
14. **Oftringen:** Mieterspiegel-Total CHF 1'546'560 gegen Facts-&-Figures CHF 1'533'230
    (Delta 13'330); der Einheitswert 264 CHF/m2 ist nur aus der Wohnungsmiete gerechnet.
15. **Biel Projektnummern:** Ordner 2601, Unterordner und `.pln` 2602, Dateiname «ESS 2502».

# ZIEL-ZUORDNUNG (Vorschlag fuer den Hauptlauf)

| Befund | Ziel-Artikel |
|---|---|
| Nebenflaechen-Faktoren (Keller/Estrich/Garage 0.30, Balkon/Terrasse 0.25, Aussen-PP 0.20), Geschossregime 1.10/1.15/1.20, Normierung auf 1000, Perimeter-Pflicht, Rueckwaerts-Kalibrierung als Warnsignal | **neuer Artikel `wertquoten-stwe`** (bisher nicht in der KB; Agent `wertquoten-rechner` referenziert ihn) |
| Begruendungs-Doktrin ZGB 712a ff., Pflichtbeilagen, konstitutiver Eintrag, Begriffsdisziplin, Reglement-Aufbau, Quoren, Sonderrecht/Gemeinschaft-Abgrenzung, Erneuerungsfonds 0.5 % GVW p.a. | **neuer Artikel `stwe-begruendung-reglement`**, verlinkt mit `projektstruktur-deliverables` |
| TDD-Fragenkatalog Stufe 1, Restnutzungsdauer-Grenzen (visuell + Rohrschnitt, keine Labortests), Unsicherheitsskala ja/hoechstwahrscheinlich/vermutlich/unbekannt, Haltbarkeitsspannen (Sanitaer 15–25 J, Fenster ≤10 J, Gasheizung 1990 → 0–5 J), Honorarstruktur 14.42 Tage à CHF 1'200 | **neuer Artikel `restnutzungsdauer-tdd`** + Ergaenzung `projektstruktur-deliverables` |
| Baar ZG: WA4/0.9 Zonentabelle, fiktive Geschosshoehen 3.0/3.5/4.5 m, UG-Bonus 30 %, Arealbebauungsbonus AZ 1.0, Attika 50 %/60 %-Regel; Oftringen AG: W3 AZ 0.60 → 0.80 via Innenentwicklung; Ipsach BE: W3 AZ 0.85; Niederhasli ZH: WE2 ohne AZ/BMZ | **`az-gfz-kennwerte`** (vier neue Eintraege) |
| Hochhausgrenze 30 m PBG ZG § 10b, gewachsenes Terrain als Brandschutz-Bezugskote gegen OK fertig Boden EG, Hochparterre-Schwelle 1.20 m, Besitzstandsgarantie bei zonenfremder Hoehe | **`az-gfz-kennwerte`** (Abschnitt Hoehenmessung) oder neuer Artikel `hoehenmessung-hochhausgrenze`; Rueckmeldung an KB `baurecht` |
| GVW/m3: Wohnbau 1986 ca. 660, Einstellhalle ca. 308, Wohnbau 1966 ca. 679; Kaufpreis als Vielfaches des GVW (1.29 / 1.59 / 2.25); Sanierungs-Einheitskosten Burg (Bad 5'000, Malerei 4'200/Whg, Boden 5'000/Whg) | **`realwert-sachwert`** |
| Quantil-Methodik Oftringen (148 → <10 %, 175 → 25 %, 264 → 90 %), Groessen-Preis-Gradient (1.5-Zi bis 364 gegen 4.5-Zi 244 CHF/m2, +50 %), Ipsach 90 %-Quantil als Deckel, Nettomiete Ø Ipsach 201 CHF/m2, Kaufpreis Eigentum Ø 6'320 CHF/m2 | **`vergleichswert-hedonisch`** |
| Bruttorenditen Oftringen (2.82/3.35/5.79 %), Burg (5.75 % korrekt), Ipsach (3.13 %); Nebenkostenanteil 13.4 %; Mietausfall 4.7 %; Nebenobjekt-Kennwerte (EHP CHF 130/Mt, Bastelraum 60–82 CHF/m2 p.a.); Sensitivitaets-Methodik Modell A/B mit Break-even-Aussage | **`ertragswert-dcf`** |
| Wuest-Mikrolagerating 5.0/5.0 gegen 2.9/5, Leerstandsziffer Ort 1.5 % gegen Objekt 7 %, Distanzenraster, Risikoraster Niederhasli (5 Achsen mit Stufe und Begruendung) | **`qualitaetsprofil-raster`** |
| ZugMap-Liegenschaftsreport (Bodenbedeckung in m2), OEREB ZG (Mapfish Print, oereblex-Attachment-Links, Negativliste), BGS ZG PDF-Endpunkte, GIS Biel Orientierungskopie 1:250, geodienste.ch av_lv95 DXF, Matterport (Bruttoinnenraum je Stockwerk, Auslassungen Garage/Balkon/<1.5 m, «ohne Gewaehr»), GEAK-Pflicht > CHF 10'000 | **`datenquellen-registry`** |
| Raumprogramm-Systematik und die SIA-416-Abweichung (fehlende VF/FF-Kategorie, 46.6 m2 Erschliessung in der HNF, Kopfhoehe unter 1.5 m voll gezaehlt); Wertquoten-Flaeche = Summe der Raum-Nettoflaechen im Sonderrecht | **`flaechendefinitionen-sia`**; offene Normfrage nach `wissen/normen` bzw. `QUESTIONS.md` |
| JANS-Checkliste Liegenschaftskauf (Tragbarkeit 1/3, Eigenmittel 20/10 %, Belehnung 80 %, kalk. Zins 4.5–5.0 %, Amortisation auf 2/3 in 15 Jahren, Nebenkosten ≥1 %, Entscheidschwelle 70–80 %), TDD-/Baurechts-Pruefbloecke, OR-Revision 01.01.2026 (60-Tage-Ruegefrist, zwingendes Nachbesserungsrecht, SIA-118-Abgrenzung, 10 Jahre bei zugesicherten Eigenschaften), Eigenmietwert-Systemwechsel ab fruehestens 01.01.2028 | **`projektstruktur-deliverables`** + eigener Abschnitt; die Rechtsaenderungen zusaetzlich als Datums-Merkposten |

**Offene Fragen fuer `QUESTIONS.md`:**
- Welche SIA-416-Kategorie tragen wohnungsinterne Flure und Waschraeume verbindlich?
  (Originalnorm noch nicht eingesehen; betrifft alle JANS-Raumprogramme.)
- Welche Kopfhoehen-Schwelle gilt fuer die Anrechenbarkeit von Estrich-/Dachflaechen in den
  betroffenen Kantonen — Matterport rechnet mit 1.5 m, das ist keine CH-Norm?
- Ist die Gebaeudehoehe Zugerstrasse 49 Baar ueber oder unter 30 m nach Bauordnung
  (Hochparterre-Messung)? Im Dossier offen geblieben.
- Welche der beiden Niederhasli-Modell-B-Reihen ist die gewollte — die 70/30-korrekte oder
  die ausgelieferte?
- Wertquoten Biel 1894-6: gilt 65.0 m2 (Teilungsplan) oder 99.3 m2 (Wertquotenrechnung)?
