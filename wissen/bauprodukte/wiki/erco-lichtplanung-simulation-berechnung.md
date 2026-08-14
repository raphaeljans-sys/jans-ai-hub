---
title: "ERCO Ratgeber — Simulation und Berechnung (Teil 2/n, Seiten 375-426)"
status: emerging
last_updated: 2026-08-13
gelesen: "Seiten 375-426 von 435 (Hauptkapitel «Simulation und Berechnung» VOLLSTÄNDIG: Einführung Simulation S.376-379, Lichtsimulation S.380-394 (3D-Modell/Oberfläche/Licht/Rendering/Beurteilung), Hardware/Software/Entwicklungen S.395-400, Berechnungen S.401-409 (Anschlussleistung/Punktbeleuchtungsstärken/Wartungsfaktor/UGR-Verfahren/Wirkungsgradverfahren/Beleuchtungskosten), Planungsdaten S.410-414 (IES/Eulumdat/DXF/i-drop/Wartungswert), Planungsbeispiele S.415-426 (sechs Referenzprojekte + Virtual Prototyping)). Offen: Kapitel «Glossar» ab S.427 bis S.435 — Anfang (Buchstaben A-E) bereits mitgelesen (Textextraktion, nicht einzeln verarbeitet), vollständige Destillation für Folgelauf."
sources: ["de_erco_guide.pdf" (ERCO GmbH, «ERCO Ratgeber», Kapitel Simulation und Berechnung + Planungsbeispiele, Editionsdaten je Seite unterschiedlich: S.375-379/386-394/410-414/415-426 Edition 04.01.2007/05.12.2006/11.12.2006 (mehrere Teil-Editionen), S.380-385 Edition 05.12.2006, S.395-398 Edition 05.12.2006, S.399-400 Edition 01.03.2010, S.401-409 Edition 06.12.2006, Glossar-Anfang S.427 Edition 01.03.2010 — Dokument seitenweise nachgeführt, kein einheitliches Ausgabedatum, wie in Teil 1 notiert)]
links: [[erco-lichtplanung-grundlagen]], [[erco-lichtplanung-glossar]], [[INDEX]]
---

# ERCO Ratgeber — Simulation und Berechnung (Teil 2/n, Seiten 375-426)

BKP-Einordnung: **BKP 233 Leuchten und Lampen** (verifiziert gegen
`references/bkp-2017/BKP-2017-Liste.md`, Subpositionen 233.0 Lieferung / 233.1
Montage). Fortsetzung von [[erco-lichtplanung-grundlagen]] (Teil 1, Seiten
1-374): dieser Artikel deckt das Hauptkapitel «Simulation und Berechnung»
vollständig sowie die «Planungsbeispiele» als Abschluss des inhaltlichen
Hauptteils. Herstellerneutralität wie in Teil 1: ERCO-eigene Produktnamen und
Drittsoftware werden als Namen genannt, nicht als einzig mögliche Lösung
dargestellt.

## Lichtsimulation — Grundlagen und Ablauf

Simulation dient zwei Zwecken: **Evaluation/Präsentation** (Konzeptvarianten
vergleichen, Bauherrenkommunikation) und **quantitative/qualitative Analyse**
(physikalisch korrekte Beleuchtungsstärken/Leuchtdichten gegen Normen prüfen
versus atmosphärische Wirkung vermitteln). Der Ablauf gliedert sich in vier
Phasen: **3D-Modell** (Export/Import aus CAD, Topologie, Geometrie-
Optimierung für Rechenzeit), **Oberflächendefinition** (Shading = Reflexions-
grad/Farbe/Transparenz, Textur/Mapping inkl. Bump Mapping), **Licht**
(direktes vs. indirektes Licht/«Global Illumination», Lichtquellen-Daten im
IES-Format als internationalem Standard, Tageslichtkopplung) und
**Rendering** (Radiosity, Photon Mapping, Raytracing/Monte-Carlo-Raytracing —
drei Berechnungsverfahren mit unterschiedlichen Vor-/Nachteilen bei Rechenzeit
versus Detailgenauigkeit).

**Fachbegriff-Referenz (Bauherren-Transfer):** Wer eine Lichtsimulation als
Planungsleistung beauftragt oder deren Ergebnis beurteilen muss, findet hier
die Vokabel, um Qualität einzufordern — z.B. ob «physikalisch korrekt»
(quantitativ, gegen Norm prüfbar) oder «atmosphärisch» (qualitativ,
Präsentationszweck) gemeint ist; beides ist legitim, aber nicht austauschbar.

## Hardware und Software

Rechenleistung hängt vor allem am **Prozessor** (CPU, Dual-Prozessoren
verkürzen Renderzeit); **Arbeitsspeicher** bestimmt die maximale Szenengrösse
vor Festplatten-Auslagerung; die **Grafikkarte** wirkt sich primär auf
Interaktivität, weniger auf reine Rechengeschwindigkeit aus.

Genannte Software-Beispiele (Drittprodukte, nicht ERCO): **DIALux**
(kostenlose Lichtplanungssoftware des Fraunhofer/DIAL-Instituts, ULD-
Datenformat), **Autodesk VIZ/3ds Max** (Radiosity-fähig, inverse Kinematik
für Leuchtenausrichtung), **Radiance** (Berkeley Lab, hochpräzise, hoher
Kenntnisaufwand, vorwiegend Forschung). Datenformate: **IES** (US-Standard
IESNA LM-63-02) und **Eulumdat** (europäisches Pendant) für Lichtstärke-
verteilung; **DXF** für Leuchtengeometrie (ohne Material-/Lichtdaten);
**i-drop** (Autodesk-Technologie für Drag&Drop virtueller Leuchten aus dem
Web in die Simulationsszene, benötigt Internet Explorer + ActiveX — technisch
veraltet, Stand der Quelle 2006).

## Berechnungen (Formeln, Bauherren-relevant)

Sechs Berechnungsarten werden dargestellt:

- **Anschlussleistung:** Leuchtenanzahl `n = Em·a·b·P* / (P·f·MF)` bzw.
  Beleuchtungsstärke `Em = n·P·f·MF / (a·b·P*)` — verknüpft gewünschte
  Beleuchtungsstärke, Raumfläche und Leuchtenanschlussleistung.
- **Punktbeleuchtungsstärken:** `Eh = I/h²` (photometrisches
  Entfernungsgesetz) für einzelne Raumpunkte; indirekte Anteile bleiben
  unberücksichtigt.
- **Wartungsfaktor (MF):** setzt sich zusammen aus Leuchtenwartungsfaktor
  (LMF, abhängig von Leuchtenbauform A-F und Reinigungsintervall),
  Raumwartungsfaktor (RSMF, abhängig von Raumverschmutzungsklasse P/C/N/D)
  und Lampenlichtstromwartungsfaktor (LLMF, abhängig von Betriebsstunden) —
  **Bauherren-Transfer:** der Neuwert einer Beleuchtungsstärke ist immer
  höher als der Wartungswert, den eine Anlage über die Nutzungsdauer
  garantieren muss; bei der Abnahme zählt Letzterer.
- **UGR-Verfahren** (Unified Glare Rating nach CIE 117): quantifiziert
  psychologische Direktblendung einer gesamten Beleuchtungsanlage (nicht nur
  einer Leuchte) für eine definierte Beobachterposition; Referenzwerte nach
  DIN EN 12464.
- **Wirkungsgradverfahren:** überschlägige Dimensionierung von
  Beleuchtungsanlagen mit regelmässigem Leuchtenraster über Leuchtenwirkungs-
  grad und Raumwirkungsgrad — für den Planungsalltag laut Quelle kaum noch
  relevant, da Software das übernimmt.
- **Beleuchtungskosten:** feste Kosten (Anschaffung, Installation, Reinigung)
  plus bewegliche Kosten (Strom, Lampenwechsel) ergeben die Jahreskosten `K`;
  die **Pay-Back-Zeit** `t` vergleicht Investitionsmehrkosten gegen
  eingesparte Betriebskosten — relevant für Wirtschaftlichkeitsvergleiche
  zwischen Leuchtentypen (Anschlusspunkt zu `kostenschaetzung`/
  `wirtschaftlichkeit-rechner`, wenn Betriebskosten einer Beleuchtungsanlage
  Teil einer Lebenszykluskostenrechnung werden).

## Planungsbeispiele (sechs Referenzprojekte)

Die Quelle dokumentiert sechs Projekte, an denen Lichtsimulation historisch
und methodisch illustriert wird — als **Fallreferenzen**, nicht als eigene
Fachlehre, aber mit übertragbaren Lehren:

- **Chiesa Dives in Misericordia** (Rom, Architekt Richard Meier, Lichtplaner
  Fisher Marantz Stone, 1998): erster dokumentierter Einsatz virtueller
  ERCO-Leuchten zur Simulation; rund 160 virtuelle Leuchten, interaktive
  Web-Freigabe für alle Planer.
- **Brandenburger Tor** (Berlin, Lichtplanung Kardorff Ingenieure): Simulation
  war hier nicht Ergänzung, sondern **einziges Mittel** — das Gebäude war
  während der gesamten Bauzeit verhüllt, Probebeleuchtung unmöglich.
  Übertragbare Lehre: bei unzugänglichen/denkmalgeschützten Objekten kann
  Simulation die Funktion der sonst üblichen Musterbeleuchtung vor Ort
  übernehmen.
- **Ara Pacis** (Rom, Richard Meier/Fisher Marantz Stone): Fototextur-
  Methode (reales Bauwerk fotografiert, Fotos den 3D-Bauteilen zugeordnet)
  für realistischen Eindruck in DIALux; Analyse des optimalen
  Lichteinfallswinkels für Relief-Schattenwurf.
- **Schottisches Parlament** (Edinburgh, EMBT Enric Miralles/RMJM,
  Lichtplaner Office for Visual Interaction): komplexe, asymmetrisch
  gewölbte Geometrie erforderte Simulation zur Einhaltung von
  Fernsehübertragungs-Vorgaben (Lichtrichtung/Beleuchtungsstärke auf
  Gesichtern am Besprechungstisch); 900 Leuchten, eigene Anwendung zur
  Übersetzung der 3D-Simulationsdaten in 2D-Ausführungspläne.
- **BMW Mini Autohaus** (Brescia, Lichtplaner Piero Comparotto/Arkilux):
  Blendungsanalyse für Leuchtdichtekontraste auf Autolack/Glas;
  Bauherrenkommunikation als zweiter Simulationszweck neben der
  technischen Prüfung.
- **Film «Tune the light»** (Simulation Aksel Karcher, Berlin): dynamisches,
  farbiges Licht in Bewegung — Leuchtengruppen wurden separat ohne
  Farbfestlegung vorgerechnet, Farbanpassung erst in der
  Videobearbeitung, um Neuberechnungen zu vermeiden.

**Virtual Prototyping** (Leuchtenentwicklung, zwei Beispiele): Simulation
eines Leuchtenentwurfs im virtuellen Fotostudio mittels HDR-Fotografie einer
Spiegelkugel (liefert reale Lichtrichtung/-farbe/Schattenart als Umgebung für
die Simulation); Reflektorsimulation per Raytracing zur iterativen
Kontur-Optimierung ohne kostenintensive physische Prototypen.

## Offen für Folgelauf

Kapitel **«Glossar»** (S.427-435, ca. 9 Seiten): alphabetisches
Fachbegriffs-Glossar der Lichtplanung. Buchstaben A-E bereits per
Textextraktion gesichtet (u.a. Begriffe Adaptation, Akkomodation, Blendung,
DALI, Darklighttechnik, Downlight, Entladungslampe, Eulumdat — teilweise
bereits als `→Querverweis`-Begriffe im laufenden Text der Teile 1/2
verwendet), aber noch nicht einzeln destilliert. Ein Glossar mit
Querverweisstruktur eignet sich für ein separates, tabellarisches
Kurzformat statt Fliesstext — Entscheidung für den Folgelauf. Damit wäre das
gesamte 435-seitige Dokument vollständig erschlossen.

## Herstellerneutralität in diesem Lauf

Genannte Produktnamen (ERCO-eigene wie Drittprodukte) sind Beispiele aus der
Quelle, keine Kaufempfehlung: **DIALux, Autodesk VIZ/3ds Max, Radiance,
i-drop** (Software), **IES, Eulumdat, DXF** (offene Datenformate, keine
Marken). Konsistent mit dem in Teil 1 begründeten Umgang mit «Light System
DALI»/«Varychrome».
