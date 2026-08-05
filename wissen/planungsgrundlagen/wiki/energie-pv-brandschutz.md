---
title: PV/Solar — Brandschutz & Naturgefahren (Schnittstelle Architekt/Bauleitung)
status: established
last_updated: 2026-08-05
sources: [PL - 04 Energie/Solaranlage/_Brandschutz/stp_solaranlagen_swissolar_v_4.0.pdf (Swissolar Stand-der-Technik-Papier V4.00, 12/2022, red. 11/2023), VKF-Brandschutzmerkblatt 2001-15 «Solaranlagen» (Rev. 01.01.2022, Delta-Bestätigung Run 37 2026-07-14 direkt aus STP S. 3), VKF-Brandschutzvorschriften BSV 2015, NIN SN 411000 Kap. 7.12 (NIN 2020), SIA 261/261-1:2020]
links: [[energie-pv-eignung-typenwahl]], [[energie-uebersicht]]
---

# PV/Solar — Brandschutz & Naturgefahren (Schnittstelle Architekt/Bauleitung)

> **Querbezug KB normen (VKF-Wortlaut):** Der amtliche VKF-Quelltext zu Solaranlagen —
> **VKF-Brandschutzmerkblatt 2001-15** (Brandmauer-Übergang, RWA-Abstand 2 m, 1200-m²-RF1-Grenze,
> Kennzeichnung) — liegt als führendes Destillat in
> `wissen/normen/destillate/vkf-merkblatt-2001-15-solaranlagen`. Dieser Artikel behält die
> **Solar-Schnittstellen-/Praxisableitung** (Swissolar-STP V4.00, Merkposten).
>
> ✅ **Ausgaben-Stand geklärt (05.08.2026):** Der hier gemeldete Fassungs-Widerspruch ist
> entschieden, und zwar zugunsten dieses Artikels. Der Delta ist **am VKF-Original selbst
> bestätigt**, nicht nur über das Swissolar-STP: Ziff. 3.2.3 Abs. 3 «Unterdachbahnen müssen
> mindestens aus Baustoffen der RF3 (cr) bestehen» (2015: «dürfen aus RF4 (cr) bestehen»).
> Präzisierung: Der RF3(cr)-Wert stammt bereits aus der Ausgabe **01.01.2017** (Beschluss
> Technische Kommission VKF vom 02.12.2016), nicht erst aus der Revision 2022 — der
> Hausbestand war also neun Jahre alt, nicht vier. Die Destillate
> `wissen/normen/destillate/vkf-brm-2001-15-solaranlagen` und
> `…/vkf-merkblatt-2001-15-solaranlagen` sind als historische Bestandsfassung 2015 markiert und
> tragen einen Delta-Block mit den geltenden Werten. Offen bleibt allein das vollständige
> Re-Destillat der Ausgabe 2022 (eigener Lesevorgang, Auftrag in
> `wissen/normen/wiki/QUESTIONS.md`, Abschnitt 2026-08-05).

Beantwortet **E6/C1** (curriculum/QUESTIONS): die brandschutz- und naturgefahren-relevanten
**Planungs-Schnittstellen** einer Solaranlage zum Gebäude — nicht die Bauteil-Klassifizierung
selbst. Quelle ist das **Swissolar Stand-der-Technik-Papier (STP) zum VKF-Brandschutzmerkblatt
2001-15 «Solaranlagen»**, V4.00 (12/2022, redaktionell 11/2023), das die Schutzziele des
VKF-Merkblatts in konkrete Lösungen übersetzt.

> **Kein Doppel:** EI/RF-Bauteil-Klassifizierung, Brandabschnitte, DoP-Prüfung → Skill
> `brandschutz`. Dieser Artikel hält nur die **Solar-spezifischen** Grundlagen fest, die ein
> JANS-Projekt für die Baueingabe/Bauleitung braucht (Brandmauer-Übergang, RWA-Abstand,
> Feuerwehr-Kennzeichnung, Naturgefahren-Nachweis, Zugänglichkeit).

## Verbindlichkeit & Normenkette (STP S. 3, 7)
- Das **VKF-Brandschutzmerkblatt 2001-15** wurde von den Fachverbänden unter Federführung der
  VKF per **01.01.2022** aktualisiert; es definiert die **Schutzziele** (VKF-BSM Art. 8). Das STP
  zeigt den **Stand der Technik** (von der TKB-VKF am 15.09.2022 als «STP» genehmigt) — kann über
  die Mindestanforderungen der BSV 2015 hinausgehen.
- Subsidiär gelten: **VKF-BSV 2015**, **SIA-Tragwerksnormen** (Naturgefahren), Elektro:
  **NIV/NIE** (SR 734.27/734.26), **NIN SN 411000 Kap. 7.12** (NIN 2020), Blitzschutz
  **SN 414022:2024** (ersetzt SNR 464022:2015 per 20.02.2024, Beleg
  `wissen/energie/destillate/snr-464022-blitzschutz-ausfuehrung.md`);
  Montage/Unterhalt: **BauAV** + SUVA-Merkblätter.
- **Eine Solaranlage begründet für sich keine Blitzschutzpflicht.** Ob ein Gebäude
  blitzschutzpflichtig ist, richtet sich allein nach der VKF-Brandschutzrichtlinie 22-15
  «Blitzschutzsysteme» (Ausgabe 01.01.2017). Ist ein Blitzschutzsystem vorhanden, ist die
  Solaranlage zu integrieren und in den Überspannungsschutz einzubeziehen (VKF-Brandschutz-
  merkblatt «Solaranlagen» 2001-15de, Ausgabe 01.01.2022, Kap. 3.1 Abs. 3). Belege:
  `wissen/energie/destillate/pv-blitzschutz-gebaeudeversicherung-ch.md` und
  `wissen/energie/destillate/vkf-richtlinie-22-15-blitzschutzsysteme.md`.
  *(Ergänzt Wissens-Chef Run 23, 03.08.2026 — der Artikel führte diesen Kernsatz nirgends.)*
- Gilt für **PV und Solarwärme (SW)**, auf **Steil- und Flachdächern** sowie Fassaden.

## Zwei Einbauarten (STP S. 8) — bestimmen die Brandschutz-Logik
1. **Gebäudeintegriert** (Indach/Fassade): Module **ersetzen** die konventionelle Dacheindeckung
   bzw. Fassadenbekleidung → Anforderungen an das **Brandverhalten der obersten Schicht** greifen
   (Typen A–D in [[energie-pv-eignung-typenwahl]]).
2. **Aufgesetzt/aufgestaendert**: Module sitzen **auf** der intakten Deckung (Typ E) → einfachere
   Brandschutz-Logik, wenn die äusserste Modulschicht nicht brennbar ist.

## Kernregeln für die Planung (belegt)

### 1 — Oberste Schicht / Brandverhalten (STP S. 20–21, VKF-BSR 14-15)
- **Aufgesetzt:** PV-Anlagen mit **nicht brennbarer äusserster Schicht** dürfen auf
  brandschutzkonformen Flach-/Steildaechern **ohne weitere Brandschutzanforderungen** montiert
  werden (Lösung A1).
- **Glas/Glas- oder Glas/Folien-Module** als Teil der Bedachung gelten als **nicht brennbare
  oberste Schicht**, wenn die bewitterte Schicht aus **RF1** besteht **und** die
  **Gesamt-Folienschichtdicke max. 1.5 mm** beträgt.
- **Integriert, grosse Flächen (Lösung A2, Anhang 7.3.6):** ab **> 1200 m²** Flächenausdehnung
  Verlegeunterlage aus **RF1**; grössere Flächen mit **≥ 0.5 m** breiten RF1-Unterteilungen in
  Felder **≤ 1200 m²** auftrennen. Lattung/Montagerahmen aus **RF3** (z.B. Holz) zulässig,
  Unterdachbahnen min. **RF3(cr)** — seit 05.08.2026 **primärquellenbelegt** am VKF-Original
  (VKF-BSM 2001-15de, Ausgabe 01.01.2022, Ziff. 3.2.3 Abs. 3, S. 9), nicht mehr nur über das
  Swissolar-STP; die Pflicht gilt bereits seit der Ausgabe 01.01.2017. Die Ausgabe 2015 sagte
  hier «≥ 1200 m²» und liess Unterdachbahnen aus RF4(cr) zu — beides überholt. Gegen feuergefährdete Räume vollflächige, staub-/trittsichere
  Verlegeunterlage (Holzwerkstoff RF3 bzw. Profilblech/Bauplatten RF1).

### 2 — Brandmauer-Übergang (STP S. 21, VKF-BSE 100-15) — **architektenrelevant**
Im Dach-/Aussenwandbereich ist die Brandmauer so auszuführen, dass ein **Brandübergriff
verhindert** wird:
- **Integriert:** Brandmauer **hohlraumfrei** bis ans hohlraumfreie Modul aus **RF1** führen
  **oder** beidseitig Abstand **≤ 20 mm**; Module mit Hohlraum bzw. brennbar **> 20 mm** → mit einer
  **RF1-Schicht unterbrechen**.
- **Aufgesetzt:** Module im Bereich der Brandmauer auf **1.0 m Breite unterbrechen**. Auf den
  Abstand kann verzichtet werden, wenn die Brandmauer **≥ 0.3 m über** die Anlage geführt wird.
- **Ausnahme REFH (Reiheneinfamilienhäuser):** bei Bedachung mit oberster Schicht aus **RF1**
  keine weiteren Massnahmen — die Anlage darf bis zur **Mittelachse der Brandmauer
  (Parzellengrenze)** gebaut werden.

### 3 — RWA / Entrauchung (STP S. 22–23, VKF-BSR 21-15) — **architektenrelevant**
Solaranlagen/Module müssen zu **Rauch- und Wärmeabzugs-Öffnungen (RWA)** genügend Abstand
aufweisen, damit Funktionsfähigkeit (Öffnungswinkel, Raumbedarf, **Schnee**) und Unterhalt
gewährleistet bleiben. Der nötige **Mindestabstand** ist über das **Lichtraumprofil** (Anhang
7.3.9) aus der First-/Anlagenhoehe bestimmbar — für NRWA, MRWA und LRWA (Lüfter Feuerwehr).
⚠ **Nicht jedes Oblicht ist eine RWA** — die RWA-Funktion vorab abklären.

### 4 — Feuerwehr & Kennzeichnung (STP S. 26–27) — **architektenrelevant**
- ⚠ **Elektrische Kerngefahr:** die **DC-Seite bleibt bei Tageslicht unter Spannung**, auch wenn
  die AC-Seite abgeschaltet ist — die Gefährdung der Einsatzkräfte bleibt bestehen.
- Der **Bauherr informiert das Feuerwehrkommando** über die Installation.
- **Gefahrenhinweis/Kennzeichnung** aus witterungsbeständigem, farbechtem Material; Anbringungsort
  gemäss **NIN 7.12.5.1**. Bei Brandmelde-/Sprinkleranlage zusätzlich beim Feuerwehrbedien- und
  Anzeigeteil.
- **Orientierungsplan** der PV-Anlage erstellen (Standorte Module, DC-Leitungen, Wechselrichter,
  Schalt-/Schutzeinrichtungen), der Feuerwehr abgeben und vor Ort gut zugänglich hinterlegen.
- **Schwelle:** Bei **installierter Leistung ≥ 30 kW** (oder relevanter Gefährdung der
  Einsatzkräfte) sind die Informationen in die **bestehenden Brandschutz- und
  Feuerwehreinsatzpläne aufzunehmen** (VKF-BSM 2003-15, Anhang B/B1).
- **Vollflächige Dächer:** im Brandfall müssen Dachgeschosse von aussen geöffnet werden können
  → Zugänglichkeit sicherstellen (Zufahrt von anderer Gebäudeseite, «Sollöffnungsstellen», RWA).
  Ausnahme: Dächer aus **RF1** (Beton/Metall).

### 5 — Naturgefahren-Nachweis (STP S. 24–25) — **architektenrelevant**
Solare Bauelemente sind Wind/Hagel/Schneedruck/Dachlawinen ausgesetzt; bei falscher Dimensionierung
können sie abheben/abrutschen. Drei Ebenen: anerkanntes Berechnungsverfahren · auf den Standort
dimensionieren · normkonforme Komponenten.
- **Bemessung Einwirkungen:** **SIA 261:2020** + **SIA 261/1:2020**.
- **Module:** Typenprüfung **SN EN 61215**(-1…-2), Sicherheit **SN EN IEC 61730-1/-2**;
  Sonnenkollektoren **SN EN 12975 / ISO 9806**.
- **Hagel:** standortabhängige **Hagelwiderstandsklasse HWx** wählen (Hagelintensitätskarten
  `schutz-vor-naturgefahren.ch`, geprüfte Bauteile im `hagelregister.ch`).
- **Schneedruck:** Module mit nachgewiesenem Widerstand für die lokale Schneelast (SIA 261).
- **Dachlawinen:** an jedem Steildach möglich — bei öffentlichen Wegen unter der Dachtraufe
  Schutz vor abrutschenden Schnee-/Eismassen.

### 6 — Solarwärme: Dauerwärmebeständigkeit (STP S. 22–23)
Bei **Solarwärme** mit Stagnationstemperaturen **≥ 85 °C** müssen die verwendeten Bauprodukte
(Anschlussleitung, Durchführungen) **dauerwärmebeständig** sein (VKF-BSR 14-15 / «Allgemein
anerkannte Bauprodukte», `bsvonline.ch`).

### 7 — Unterhalt & Zugänglichkeit (STP S. 28–29)
- **Bedienelemente** (AC-/DC-Schalter, Wechselrichter) müssen **jederzeit zugänglich** sein
  (NIN; Einbauhöhen-Grafik: Anschlüsse ~0.2–0.8 m, NOT-AUS/Bedien ~1.6–2.0 m, Anzeigen bis ~2.2 m).
- Zutritt zum Solargenerator gegen **Absturz** sichern (temporär/fest, **SUVA** Merkblatt 44095.d).
  ⚠ Hersteller-Wartungsintervalle entsprechen nicht der Realität — eine Anlage wird **nur für
  Reparaturen** begangen; Verantwortung beim Gebäudeeigentümer.
- **Systemdokumentation (S. 30):** Feuerwehr, Betriebsinhaber, **VNB** (Netzbetreiber) und
  Kontroll-/Sicherheitsorgane in Kenntnis setzen.

## Praxis-Merkposten JANS
- **Früh klären:** PV ≥ 30 kW (Healthcare/MFH/Hochbau regelmässig) → **Feuerwehreinsatzplan
  zwingend** ergänzen; in der Studie als Pendenz/Kostenposten vermerken.
- **Brandmauer auf Parzellengrenze** (Reihen-/Doppelhaus): bei aufgesetzter PV 1.0 m frei **oder**
  Brandmauer 0.3 m überhöhen — frühzeitig mit dem Dachaufbau koordinieren.
- **Flachdach mit RWA + PV:** Lichtraumprofil-Abstand zur RWA in die Belegungsplanung einrechnen
  (mindert die belegbare Fläche → wirkt auf kWp/Ertrag, vgl. [[energie-pv-eignung-typenwahl]]).
- **Kennzeichnung/Orientierungsplan** in die Ausführungs-/Abnahmedokumentation aufnehmen.

## Datenstand / offen
⚠ STP **V4.00 (12/2022, red. 11/2023)** — berücksichtigt VKF-BSV-Anpassungen per 01.01.2022/2019.
Swissolar aktualisiert das STP periodisch → vor grossen Projekten die **aktuelle Fassung**
(`swissolar.ch`) und das geltende **VKF-BSM 2001-15** prüfen. Bauteil-Klassen/EI/RF → Skill
`brandschutz`. Offen: VKF-BSM-2001-15-Aktualität >18 Mt. periodisch nachziehen.

**Rev.-2022-Delta bestätigt (Run 37, 2026-07-14):** die Swissolar-STP-Quelle selbst belegt
(S. 3, Vorwort): «haben die betroffenen Fachverbände unter Federführung der VKF das
Brandschutzmerkblatt (VKF-BSM 2001-15) "Solaranlagen" erarbeitet und dieses per 1. Januar 2022
aktualisiert.» Die STP wurde am 15.09.2022 von der TKB-VKF auf Übereinstimmung mit den
Mindestanforderungen der BSV 2015 (Stand 1.8.2021) geprüft. Damit ist die Rev. 2022 real und
keine Fehlinterpretation. Das im Hub abgelegte VKF-PDF selbst
(`PL-03/02 Brandschutzrichtlinien 2015-17-22/2001-15_VKF-AEAI_BrandschutzMerkblatt_Solaranlange_d.pdf`,
destilliert in `wissen/normen/destillate/vkf-merkblatt-2001-15-solaranlagen.md` +
`vkf-brm-2001-15-solaranlagen.md`) trägt jedoch weiterhin nur den Ausgabestempel **06.03.2015** —
die eigenständige 2022er-VKF-Merkblatt-PDF liegt NICHT separat im SharePoint-Inventar vor, nur
die daraus zitierten Änderungen über die Swissolar-STP. Re-Destillat der 2022er-Merkblattfassung
bleibt offen, bis das Original-PDF beschafft ist.

**Nachtrag 05.08.2026 — Original beschafft, Vorbehalt entfällt:** Die Ausgabe 01.01.2022
(15 S., MD5 `a17958fdf95c720434ffa90117964b23`) und die bis dahin niemandem bekannte
Zwischenausgabe 01.01.2017 (12 S.) wurden über das öffentliche VKG-Publikationsportal
(`services.vkg.ch`) geladen und gelesen. Der Delta ist damit am VKF-Text selbst belegt.
Präzisierung: Der **RF3(cr)-Wert kam mit der Ausgabe 01.01.2017**; die Ausgabe 2022 änderte
demgegenüber Tabelle 1 (DC-Verlegung, neu «In Rohr RF2 (cr)»/«In Rohr RF1» statt BKZ 6.3/5.2),
die RWA-Regel (2.0 m nur noch als Anhangs-Schwelle S. 14, bei Unterschreitung Lichtraumprofil),
die Flächenschwelle auf «> 1200 m²» und Kap. 3.3 (neu «Naturgefahren», SIA 261/261-1 statt
VKF-Wegleitung und Hagelbeschluss). Beide normen-Destillate tragen jetzt einen Delta-Block; das
vollständige Re-Destillat der Ausgabe 2022 bleibt als eigener Lesevorgang offen
(`wissen/normen/wiki/QUESTIONS.md`, Abschnitt 2026-08-05). Der Bestand im SharePoint ist
unverändert die Fassung 2015 — solange das so bleibt, reproduziert jeder Lauf, der brav
«Primärquelle SharePoint» liest, denselben Fehler.
