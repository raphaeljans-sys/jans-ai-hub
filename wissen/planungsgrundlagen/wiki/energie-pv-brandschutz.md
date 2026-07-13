---
title: PV/Solar — Brandschutz & Naturgefahren (Schnittstelle Architekt/Bauleitung)
status: established
last_updated: 2026-07-14
sources: [PL - 04 Energie/Solaranlage/_Brandschutz/stp_solaranlagen_swissolar_v_4.0.pdf (Swissolar Stand-der-Technik-Papier V4.00, 12/2022, red. 11/2023), VKF-Brandschutzmerkblatt 2001-15 «Solaranlagen» (Rev. 01.01.2022, Delta-Bestaetigung Run 37 2026-07-14 direkt aus STP S. 3), VKF-Brandschutzvorschriften BSV 2015, NIN SN 411000 Kap. 7.12 (NIN 2020), SIA 261/261-1:2020]
links: [[energie-pv-eignung-typenwahl]], [[energie-uebersicht]]
---

# PV/Solar — Brandschutz & Naturgefahren (Schnittstelle Architekt/Bauleitung)

> **Querbezug KB normen (VKF-Wortlaut):** Der amtliche VKF-Quelltext zu Solaranlagen —
> **VKF-Brandschutzmerkblatt 2001-15** (Brandmauer-Uebergang, RWA-Abstand 2 m, 1200-m²-RF1-Grenze,
> Kennzeichnung) — liegt als fuehrendes Destillat in
> `wissen/normen/destillate/vkf-merkblatt-2001-15-solaranlagen`. Dieser Artikel behaelt die
> **Solar-Schnittstellen-/Praxisableitung** (Swissolar-STP V4.00, Merkposten). ⚠ Ausgaben-Stand:
> das normen-Destillat fuehrt die Ausgabe **2015**, hier ist die **Rev. 01.01.2022** belegt
> (Folge z.B. Unterdachbahnen RF3(cr) statt 2015er RF4(cr)) — 2022er-Re-Destillat in normen offen.

Beantwortet **E6/C1** (curriculum/QUESTIONS): die brandschutz- und naturgefahren-relevanten
**Planungs-Schnittstellen** einer Solaranlage zum Gebaeude — nicht die Bauteil-Klassifizierung
selbst. Quelle ist das **Swissolar Stand-der-Technik-Papier (STP) zum VKF-Brandschutzmerkblatt
2001-15 «Solaranlagen»**, V4.00 (12/2022, redaktionell 11/2023), das die Schutzziele des
VKF-Merkblatts in konkrete Loesungen uebersetzt.

> **Kein Doppel:** EI/RF-Bauteil-Klassifizierung, Brandabschnitte, DoP-Pruefung → Skill
> `brandschutz`. Dieser Artikel haelt nur die **Solar-spezifischen** Grundlagen fest, die ein
> JANS-Projekt fuer die Baueingabe/Bauleitung braucht (Brandmauer-Uebergang, RWA-Abstand,
> Feuerwehr-Kennzeichnung, Naturgefahren-Nachweis, Zugaenglichkeit).

## Verbindlichkeit & Normenkette (STP S. 3, 7)
- Das **VKF-Brandschutzmerkblatt 2001-15** wurde von den Fachverbaenden unter Federfuehrung der
  VKF per **01.01.2022** aktualisiert; es definiert die **Schutzziele** (VKF-BSM Art. 8). Das STP
  zeigt den **Stand der Technik** (von der TKB-VKF am 15.09.2022 als «STP» genehmigt) — kann ueber
  die Mindestanforderungen der BSV 2015 hinausgehen.
- Subsidiaer gelten: **VKF-BSV 2015**, **SIA-Tragwerksnormen** (Naturgefahren), Elektro:
  **NIV/NIE** (SR 734.27/734.26), **NIN SN 411000 Kap. 7.12** (NIN 2020), Blitzschutz **SN 414022**;
  Montage/Unterhalt: **BauAV** + SUVA-Merkblaetter.
- Gilt fuer **PV und Solarwaerme (SW)**, auf **Steil- und Flachdaechern** sowie Fassaden.

## Zwei Einbauarten (STP S. 8) — bestimmen die Brandschutz-Logik
1. **Gebaeudeintegriert** (Indach/Fassade): Module **ersetzen** die konventionelle Dacheindeckung
   bzw. Fassadenbekleidung → Anforderungen an das **Brandverhalten der obersten Schicht** greifen
   (Typen A–D in [[energie-pv-eignung-typenwahl]]).
2. **Aufgesetzt/aufgestaendert**: Module sitzen **auf** der intakten Deckung (Typ E) → einfachere
   Brandschutz-Logik, wenn die aeusserste Modulschicht nicht brennbar ist.

## Kernregeln fuer die Planung (belegt)

### 1 — Oberste Schicht / Brandverhalten (STP S. 20–21, VKF-BSR 14-15)
- **Aufgesetzt:** PV-Anlagen mit **nicht brennbarer aeusserster Schicht** duerfen auf
  brandschutzkonformen Flach-/Steildaechern **ohne weitere Brandschutzanforderungen** montiert
  werden (Loesung A1).
- **Glas/Glas- oder Glas/Folien-Module** als Teil der Bedachung gelten als **nicht brennbare
  oberste Schicht**, wenn die bewitterte Schicht aus **RF1** besteht **und** die
  **Gesamt-Folienschichtdicke max. 1.5 mm** betraegt.
- **Integriert, grosse Flaechen (Loesung A2, Anhang 7.3.6):** ab **> 1200 m²** Flaechenausdehnung
  Verlegeunterlage aus **RF1**; groessere Flaechen mit **≥ 0.5 m** breiten RF1-Unterteilungen in
  Felder **≤ 1200 m²** auftrennen. Lattung/Montagerahmen aus **RF3** (z.B. Holz) zulaessig,
  Unterdachbahnen min. **RF3(cr)**. Gegen feuergefaehrdete Raeume vollflaechige, staub-/trittsichere
  Verlegeunterlage (Holzwerkstoff RF3 bzw. Profilblech/Bauplatten RF1).

### 2 — Brandmauer-Uebergang (STP S. 21, VKF-BSE 100-15) — **architektenrelevant**
Im Dach-/Aussenwandbereich ist die Brandmauer so auszufuehren, dass ein **Brandübergriff
verhindert** wird:
- **Integriert:** Brandmauer **hohlraumfrei** bis ans hohlraumfreie Modul aus **RF1** fuehren
  **oder** beidseitig Abstand **≤ 20 mm**; Module mit Hohlraum bzw. brennbar **> 20 mm** → mit einer
  **RF1-Schicht unterbrechen**.
- **Aufgesetzt:** Module im Bereich der Brandmauer auf **1.0 m Breite unterbrechen**. Auf den
  Abstand kann verzichtet werden, wenn die Brandmauer **≥ 0.3 m ueber** die Anlage gefuehrt wird.
- **Ausnahme REFH (Reiheneinfamilienhaeuser):** bei Bedachung mit oberster Schicht aus **RF1**
  keine weiteren Massnahmen — die Anlage darf bis zur **Mittelachse der Brandmauer
  (Parzellengrenze)** gebaut werden.

### 3 — RWA / Entrauchung (STP S. 22–23, VKF-BSR 21-15) — **architektenrelevant**
Solaranlagen/Module muessen zu **Rauch- und Waermeabzugs-Oeffnungen (RWA)** genuegend Abstand
aufweisen, damit Funktionsfaehigkeit (Oeffnungswinkel, Raumbedarf, **Schnee**) und Unterhalt
gewaehrleistet bleiben. Der noetige **Mindestabstand** ist ueber das **Lichtraumprofil** (Anhang
7.3.9) aus der First-/Anlagenhoehe bestimmbar — fuer NRWA, MRWA und LRWA (Luefter Feuerwehr).
⚠ **Nicht jedes Oblicht ist eine RWA** — die RWA-Funktion vorab abklaeren.

### 4 — Feuerwehr & Kennzeichnung (STP S. 26–27) — **architektenrelevant**
- ⚠ **Elektrische Kerngefahr:** die **DC-Seite bleibt bei Tageslicht unter Spannung**, auch wenn
  die AC-Seite abgeschaltet ist — die Gefaehrdung der Einsatzkraefte bleibt bestehen.
- Der **Bauherr informiert das Feuerwehrkommando** ueber die Installation.
- **Gefahrenhinweis/Kennzeichnung** aus witterungsbestaendigem, farbechtem Material; Anbringungsort
  gemaess **NIN 7.12.5.1**. Bei Brandmelde-/Sprinkleranlage zusaetzlich beim Feuerwehrbedien- und
  Anzeigeteil.
- **Orientierungsplan** der PV-Anlage erstellen (Standorte Module, DC-Leitungen, Wechselrichter,
  Schalt-/Schutzeinrichtungen), der Feuerwehr abgeben und vor Ort gut zugaenglich hinterlegen.
- **Schwelle:** Bei **installierter Leistung ≥ 30 kW** (oder relevanter Gefaehrdung der
  Einsatzkraefte) sind die Informationen in die **bestehenden Brandschutz- und
  Feuerwehreinsatzplaene aufzunehmen** (VKF-BSM 2003-15, Anhang B/B1).
- **Vollflaechige Daecher:** im Brandfall muessen Dachgeschosse von aussen geoeffnet werden koennen
  → Zugaenglichkeit sicherstellen (Zufahrt von anderer Gebaeudeseite, «Solloeffnungsstellen», RWA).
  Ausnahme: Daecher aus **RF1** (Beton/Metall).

### 5 — Naturgefahren-Nachweis (STP S. 24–25) — **architektenrelevant**
Solare Bauelemente sind Wind/Hagel/Schneedruck/Dachlawinen ausgesetzt; bei falscher Dimensionierung
koennen sie abheben/abrutschen. Drei Ebenen: anerkanntes Berechnungsverfahren · auf den Standort
dimensionieren · normkonforme Komponenten.
- **Bemessung Einwirkungen:** **SIA 261:2020** + **SIA 261/1:2020**.
- **Module:** Typenpruefung **SN EN 61215**(-1…-2), Sicherheit **SN EN IEC 61730-1/-2**;
  Sonnenkollektoren **SN EN 12975 / ISO 9806**.
- **Hagel:** standortabhaengige **Hagelwiderstandsklasse HWx** waehlen (Hagelintensitaetskarten
  `schutz-vor-naturgefahren.ch`, gepruefte Bauteile im `hagelregister.ch`).
- **Schneedruck:** Module mit nachgewiesenem Widerstand fuer die lokale Schneelast (SIA 261).
- **Dachlawinen:** an jedem Steildach moeglich — bei oeffentlichen Wegen unter der Dachtraufe
  Schutz vor abrutschenden Schnee-/Eismassen.

### 6 — Solarwaerme: Dauerwaermebestaendigkeit (STP S. 22–23)
Bei **Solarwaerme** mit Stagnationstemperaturen **≥ 85 °C** muessen die verwendeten Bauprodukte
(Anschlussleitung, Durchfuehrungen) **dauerwaermebestaendig** sein (VKF-BSR 14-15 / «Allgemein
anerkannte Bauprodukte», `bsvonline.ch`).

### 7 — Unterhalt & Zugaenglichkeit (STP S. 28–29)
- **Bedienelemente** (AC-/DC-Schalter, Wechselrichter) muessen **jederzeit zugaenglich** sein
  (NIN; Einbauhoehen-Grafik: Anschluesse ~0.2–0.8 m, NOT-AUS/Bedien ~1.6–2.0 m, Anzeigen bis ~2.2 m).
- Zutritt zum Solargenerator gegen **Absturz** sichern (temporaer/fest, **SUVA** Merkblatt 44095.d).
  ⚠ Hersteller-Wartungsintervalle entsprechen nicht der Realitaet — eine Anlage wird **nur fuer
  Reparaturen** begangen; Verantwortung beim Gebaeudeeigentuemer.
- **Systemdokumentation (S. 30):** Feuerwehr, Betriebsinhaber, **VNB** (Netzbetreiber) und
  Kontroll-/Sicherheitsorgane in Kenntnis setzen.

## Praxis-Merkposten JANS
- **Frueh klaeren:** PV ≥ 30 kW (Healthcare/MFH/Hochbau regelmaessig) → **Feuerwehreinsatzplan
  zwingend** ergaenzen; in der Studie als Pendenz/Kostenposten vermerken.
- **Brandmauer auf Parzellengrenze** (Reihen-/Doppelhaus): bei aufgesetzter PV 1.0 m frei **oder**
  Brandmauer 0.3 m ueberhoehen — fruehzeitig mit dem Dachaufbau koordinieren.
- **Flachdach mit RWA + PV:** Lichtraumprofil-Abstand zur RWA in die Belegungsplanung einrechnen
  (mindert die belegbare Flaeche → wirkt auf kWp/Ertrag, vgl. [[energie-pv-eignung-typenwahl]]).
- **Kennzeichnung/Orientierungsplan** in die Ausfuehrungs-/Abnahmedokumentation aufnehmen.

## Datenstand / offen
⚠ STP **V4.00 (12/2022, red. 11/2023)** — beruecksichtigt VKF-BSV-Anpassungen per 01.01.2022/2019.
Swissolar aktualisiert das STP periodisch → vor grossen Projekten die **aktuelle Fassung**
(`swissolar.ch`) und das geltende **VKF-BSM 2001-15** pruefen. Bauteil-Klassen/EI/RF → Skill
`brandschutz`. Offen: VKF-BSM-2001-15-Aktualitaet >18 Mt. periodisch nachziehen.

**Rev.-2022-Delta bestaetigt (Run 37, 2026-07-14):** die Swissolar-STP-Quelle selbst belegt
(S. 3, Vorwort): «haben die betroffenen Fachverbaende unter Federfuehrung der VKF das
Brandschutzmerkblatt (VKF-BSM 2001-15) "Solaranlagen" erarbeitet und dieses per 1. Januar 2022
aktualisiert.» Die STP wurde am 15.09.2022 von der TKB-VKF auf Uebereinstimmung mit den
Mindestanforderungen der BSV 2015 (Stand 1.8.2021) geprueft. Damit ist die Rev. 2022 real und
keine Fehlinterpretation. Das im Hub abgelegte VKF-PDF selbst
(`PL-03/02 Brandschutzrichtlinien 2015-17-22/2001-15_VKF-AEAI_BrandschutzMerkblatt_Solaranlange_d.pdf`,
destilliert in `wissen/normen/destillate/vkf-merkblatt-2001-15-solaranlagen.md` +
`vkf-brm-2001-15-solaranlagen.md`) traegt jedoch weiterhin nur den Ausgabestempel **06.03.2015** —
die eigenstaendige 2022er-VKF-Merkblatt-PDF liegt NICHT separat im SharePoint-Inventar vor, nur
die daraus zitierten Aenderungen ueber die Swissolar-STP. Re-Destillat der 2022er-Merkblattfassung
bleibt offen, bis das Original-PDF beschafft ist.
