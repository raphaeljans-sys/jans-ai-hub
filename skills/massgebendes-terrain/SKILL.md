---
name: massgebendes-terrain
description: Massgebendes-Terrain-Harness fuer Hanglagen (Prinzip Raphael, validiert am Fall 2621 Giebelweg 12, 12.06.2026). Legt das massgebende Terrain (MT) pragmatisch fest (gewachsene Referenz-Terrainlinie an unverbauter Parzellengrenze, Absenkung im Baukoerperbereich, Anbindung ans Strassenniveau, Quer-Extrusion) und prueft/formt daraus zwei Dinge: (1) die anrechenbare Baumasse als Volumen UEBER der MT-Flaeche (Rasterintegration, bergseitig eingegrabene Masse zaehlt nicht) und (2) die Fassadenhoehe AN JEDER GEBAEUDEECKE einzeln, gemessen ab MT am Fusspunkt der Ecke — nie ausgemittelt. Haelt eine Ecke nicht ein, wird das Volumen abgetreppt (Stufen quer zur Falllinie, Stufendach = MT an der talseitigen Stufenecke + Fassadenhoehe), so dass die Abtreppung das Hanggefaelle abstrakt nachbildet. Diesen Skill verwenden wenn der Benutzer fragt: "massgebendes Terrain", "gewachsenes Terrain", "Hangschnitt-Nachweis", "Fassadenhoehe am Hang", "Gebaeudehoehe Hanglage", "Baumasse am Hang", "Abtreppung Hang", "Terrainnachweis", "wie viel zaehlt am Hang", "MT festlegen", oder wenn machbarkeit/volumenstudie an einer Hangparzelle (>10 % Gefaelle) Volumen oder Hoehen rechnet.
---

# Massgebendes Terrain — MT-Festlegung und Fassadenhoehen am Hang

## Contract

- **Trigger:** Hangparzellen in `machbarkeit` / `volumenstudie` / `behoerden-vorabklaerung`;
  manuell auf Zuruf (Stichworte siehe Frontmatter).
- **Inputs:** Parzellen-Polygon (amtlich, LV95), Gebaeude-Fussabdruck (+ Attika), DTM
  (swissALTI3D via `planungsgrundlagen/connectors/geo-zh.mjs --produkt dtm --download`),
  zonengemaesse Fassadenhoehe + Attikahoehe + Baumasse-Budget (aus Skill `baurecht`/BZO).
- **Output:** Hangschnitt-Nachweis (Grafik + Rechnung), ggf. abgetrepptes Volumen
  (OBJ/3dm via volumenstudie-Pipeline), Kennzahlen (anrechenbare Baumasse, Hoehen je Ecke).
- **Validierter Fall:** 2621 Giebelweg 12, Langnau a.A. (260612) — Flachannahme 1'443 m3
  → ueber MT mit Abtreppung 1'167 m3 bei voller Attika; Deliverable
  `12_MBS_Vorlagenstil/260612_Hangschnitt-Nachweis_Giebelweg-12.pdf`.

## Prinzip 1 — MT-Festlegung (pragmatisch, Bauherren-Rezept)

1. **Referenzlinie:** Terrainlinie entlang einer **unverbauten/unveraenderten Parzellengrenze**
   (dort ist das Terrain noch gewachsen) aus swissALTI3D abgreifen (Profil entlang der Grenze,
   parametrisiert ueber die Stationierung s).
2. **Absenkung im Baukoerperbereich:** Im s-Bereich des Fussabdrucks die Linie auf die
   **Sehne** zwischen den Terrainpunkten an den Baukoerperraendern absenken (eliminert
   lokale Aufschuettungen/Buckel, konservativ).
3. **Anbindung Strassenniveau:** Bergseitig (am Erschliessungsrand) die Linie auf das
   **Strassenniveau** setzen (DTM-Probe auf der Strassenachse) und linear ueberblenden.
4. **Quer-Extrusion:** Die so bereinigte Linie quer zur Falllinie horizontal extrudieren
   → MT-Flaeche MT(x,y) = MT(s(x,y)). Fuer schmale Baukoerper ausreichend; bei breiten
   Baufeldern Querprofile ergaenzen.
5. **Ausweisen, nie verstecken:** Die Festlegung ist pragmatisch (Bauherren-/Studienlogik);
   die amtliche Festlegung obliegt Bauamt/Geometer → immer als Vorbehalt + Empfehlung
   Voranfrage (§ 318 PBG ZH) ausweisen.

## Prinzip 2 — Baumasse ueber MT

- Anrechenbar ist das Volumen des Baukoerpers **ueber der MT-Flaeche**:
  Rasterintegration (0.4–0.5 m Raster) von max(0, OK Dach − MT(x,y)) ueber den Fussabdruck;
  Attika = Attikaflaeche × Attikahoehe (liegt vollstaendig ueber MT).
- Bergseitig unter MT liegende Masse zaehlt NICHT (das ist der Hang-Gewinn gegenueber
  der Flachannahme «Fussabdruck × Hoehe ab einheitlicher Kote»).

## Prinzip 3 — Fassadenhoehe an JEDER Gebaeudeecke (nie ausmitteln!)

- **Regel (Raphael, 260612):** Jede Fassadenecke muss die zonengemaesse Fassadenhoehe
  einhalten, **gemessen ab MT am Fusspunkt genau dieser Ecke.** Eine Ausmittelung ueber
  den Fussabdruck ist unzulaessig: Setzt man bergseitige Ecken auf die Maximalhoehe,
  liegen talseitige Ecken zwingend hoeher ueber ihrem MT — der Hang faellt ja ab.
- **Konsequenz Abtreppung:** Haelt eine talseitige Ecke nicht ein, wird das Volumen
  **abgetreppt**: Stufen quer zur Falllinie; **Stufendach-Kote = MT an der talseitigen
  Stufenkante + Fassadenhoehe.** Die Abtreppung bildet das Hanggefaelle abstrakt nach
  und bringt die baurechtlichen Rahmenbedingungen direkt in den Entwurf.
- Attika je Stufe: OK Attika = Stufendach + Attikahoehe; Attika-Fragmente an Stufengrenzen
  der TIEFEREN Nachbarstufe zuschlagen (konservativ konform).
- Stufenzahl: 3 Stufen als Startwert; feinere Stufung naehert die Kaeseglocke
  (Minimum = Fussabdruck × Fassadenhoehe), groebere verschenkt weniger Entwurfsruhe —
  mit der Baumasse-Bilanz austarieren.

## Ablauf

1. DTM beschaffen (`geo-zh.mjs --produkt dtm --download`), Parzelle/Fussabdruck lokal.
2. MT nach Prinzip 1 konstruieren; MT-Statistik ueber Fussabdruck (min/mean/max) ausweisen.
3. Baumasse ueber MT (Prinzip 2) gegen Budget pruefen.
4. Hoehencheck je Ecke (Prinzip 3); bei Verletzung Abtreppung konstruieren und
   Schritt 3 wiederholen.
5. Deliverables: Hangschnitt-Grafik (gewachsen + MT + Stufen + 2-Pfeil-Masse je
   talseitiger Stufenecke), Rechnungstabelle, 3D via `volumenstudie` (Teil-OBJs je Stufe,
   Render ueber `render-remote.sh`), Vorbehalts-Block.

## Stolpersteine (aus Fall 2621)

- **Ausmittelungs-Falle:** «Dach = MT_mean + h» liefert per Konstruktion immer
  anrechenbar = A × h und schoent die talseitigen Ecken → Prinzip 3 verhindert das.
- Profil-Buckel an der Referenzgrenze (alte Gartenterrassen) → Sehnen-Absenkung.
- GDAL/DXF-Z-Falle und OBJ-Konventionen: siehe Skill `volumenstudie`.
- Kennwerte/Identifikatoren belegen (Rule identifikatoren-verifizieren); MT-Vorbehalt
  IMMER in den Output.
