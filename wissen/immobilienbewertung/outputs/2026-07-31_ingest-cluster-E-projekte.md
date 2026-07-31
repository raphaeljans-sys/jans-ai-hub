---
title: "Ingest Cluster E — IMMO-Projektordner 02–05 und _Vorlage"
date: 2026-07-31
status: in-arbeit
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

Wichtige Einschraenkung, die der ZugMap-Report selbst vermerkt: Ausz&uuml;ge sind **teilweise
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

(in Arbeit)

# TEIL 4 — `05 MASSAUFNAHMEN/` und `_Vorlage/`

(in Arbeit)
