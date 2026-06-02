# Kandidaten aus macOS-Kontakten — Bau-Unternehmer (heuristisch)

Erzeugt 2026-06-01 aus 860 Adressbuch-Kontakten. **Reifegrad R0 — zu pruefen.**
Heuristische Gewerk-Zuordnung anhand Firmenname; Kontaktdaten (Mail/Tel) werden bei Bedarf
pro Firma aus dem Adressbuch nachgezogen. Lieferanten/Grosshandel separat unten.

## Ausfuehrende Bau-Unternehmer

### BKP 211 — Baumeister/Hochbau (1)
- Marti AG, Bauunternehmung

### BKP 214 — Holzbau/Zimmerei (6)
- Gräzer Holzbau AG
- Kost Holzbau
- Posch Holzbau
- Waldstatt Holz und Blockbau GmbH
- Waldstatt Holz- & Blockbau GmbH
- Zimmerei Oberhänsli

### BKP 221 — Fenster (6)
- 4B Fenster AG
- Huber Fenster AG
- Langenegger-Fenster
- Theo Graf Fenster
- Theograf Fensterbauer
- Velfac Fenster

### BKP 225 — Abdichtung (1)
- Jimmy´s-Fugen Abdichtungen GmbH

### BKP 226 — Fassade (2)
- GFT
- Gasser Fassadentechnik AG

### BKP 228 — Storen/Sonnenschutz (5)
- Fuhrimann Storenbau AG
- Häfliger Storen
- Kästli & Mathys Storen AG
- Mensch Rolladen AG
- RUFALEX Rollladen-Systeme AG

### BKP 230 — Elektro (4)
- Elektro Bundi
- Elektro Bundi AG
- Pusterla Elektronik
- Weder Elektro

### BKP 240 — Haustechnik (1)
- 38Grad Gebäudetechnik

### BKP 244 — Lüftung/Klima (1)
- Air Kraft AG

### BKP 250 — Sanitär (1)
- Benzenhofer Sanitär

### BKP 258 — Küchen (2)
- Röthlisberger Küche
- alig grossküchen ag

### BKP 271 — Gipser (1)
- Estermann AG Gipserunternehmen

### BKP 272 — Metallbau (8)
- Delfosse AG Metallbau
- E. Lussi GmbH Schlosserei + Storenbau
- Ernst Schweizer AG, Metallbau
- Grob Metallbau AG
- MATTER METALLBAU AG
- Metallbau Simeoni GmbH
- Ruch AG Metallbauer
- Wolfermann-Nägeli Metallbau AG

### BKP 273 — Schreiner (4)
- ETHZ Schreinerei
- Hobel Schreinerei Altstetten
- Scherrer Schreinerei
- Schreiner und Drechsler

### BKP 274 — Verglasung/Glas (3)
- Degen Innere Verglasungen
- Glas & Spiegel
- Saxer Glasbausteine

### BKP 281 — Bodenbeläge/Parkett (3)
- Dänu's Keramische Wand- und Bodenbeläge
- Parkettgalerie
- Unterlagsboden Hartbeton

### BKP 281 — Unterlagsboden (2)
- Marrer Unterlagsboden
- Marrer Unterlagsböden GmbH

### BKP 282 — Plattenbeläge/Naturstein (4)
- Die Plattenleger Dobslaf
- Plattenleger Hardstrasse
- Rothen Naturstein M&M
- Wind AG Zürich Keramische Wad- und Bodenplatten

### BKP 285 — Maler (5)
- Christian Schmidt Malermeister AG
- Christian Schmitdt Malermeister AG
- Malergeschäft Mario GmbH
- OptiMaler
- OptiMaler GmbH

### BKP 411 — Garten/Umgebung (4)
- Lars Ruge Landschaften
- Lüscher Gartenbau- Baumschulen AG
- Matter Gartenbau AG Buchs
- Trüb Gartenbau Horgen

## Bau-Lieferanten / Grosshandel (separat, keine Submittenten)

### BKP 230 Elektro (3)
- EM Woertz Elektro Material
- Elektrogros AG
- Otto Fischer AG Elektrogrosshandel

### BKP 240 Heizung (1)
- Debrunner Acifer AG Glattbrugg Heizung Sanitär Schrauben Werkzeug

### BKP 250 Sanitär (1)
- Handwerkzentrum Sanitär Richner Miauton

### BKP 282 Plattenbeläge/Naturstein (4)
- Martin Hess Natursteine GmbH
- Richner Plattenbelag Urdorf
- SABAG Baukeramik AG Zürich
- WASU Baukeramik AG

## Wahrscheinliche Dubletten im Adressbuch (bereinigen)
- Theo Graf Fenster  ↔  Theograf Fensterbauer
- Christian Schmidt Malermeister AG  ↔  Christian Schmitdt Malermeister AG (Tippfehler)
- OptiMaler  ↔  OptiMaler GmbH
- Marrer Unterlagsboden  ↔  Marrer Unterlagsböden GmbH
- Elektro Bundi  ↔  Elektro Bundi AG
- Waldstatt Holz und Blockbau GmbH  ↔  Waldstatt Holz- & Blockbau GmbH

## Status / nächster Schritt
R0 = heuristisch aus Firmennamen erkannt, NICHT verifiziert. Bestätigte Firmen entweder
(a) im Adressbuch in BKP-Gruppe `<BKP>_<Gewerk>` aufnehmen → `kontakte_bkp_import.py`
(wird zu verifiziertem R2-Overlay), oder (b) als Status-Upgrade in `stammdaten/` zurückspeisen.
