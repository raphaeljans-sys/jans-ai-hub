# SPEC — Machbarkeits-Studio (nach Spec-Methode)

Erstellt 27.06.2026 im autonomen Nacht-Build. Grundlage: Auftrag Raphael
("ueber Nacht eine Machbarkeits-Studio-Skill bauen, die in der Funktionalitaet eine komplett
neue, unuebertroffene Leistung darstellt und mich von Mitbewerbern massiv unterscheidet").

## Wahres Ziel (Spec)

Nicht "noch eine Machbarkeitsstudie", sondern ein **Verkaufs-/Beratungs-Werkzeug**, das das
Bauherren-Gespraech veraendert: weg von "hier ist unsere eingefrorene Zahl", hin zu "rechnen wir
es gemeinsam live durch". Das Alleinstellungsmerkmal ist die **Interaktivitaet am Tisch** plus die
**Vollstaendigkeit aus einer Hand** (Geodaten → Baurecht → Volumen → Kosten → Wirtschaftlichkeit),
beides verschickbar als EIN offline lauffaehiges HTML — und parallel das gewohnte Dossier.

## Bestaetigte Schluesselentscheide (Interview 27.06.2026)

1. **Kern-Differenzierer:** Interaktives Live-Studio (Bauherr bewegt Regler, alles rechnet live).
2. **Leitmedium:** Beides — interaktives HTML-Studio **und** DOCX/PDF-Dossier aus einem Lauf.
3. **Architektur:** Neuer Orchestrator-Skill `machbarkeit-studio` ueber dem bestehenden
   `machbarkeit` (bestehendes bleibt unangetastet, wird wiederverwendet).
4. **Umfang:** Voll bauen + Selbsttest an echter ZH-Parzelle; autonom, ohne Rueckfragen; nichts
   committen/versenden ohne ausdrueckliche Freigabe.

## Bewertungskriterien (vorab definiert)

- **K1 Live-Korrektheit:** Regleraenderung rechnet Volumen/Kosten/Residual/Marge/Sensitivitaet
  fuer alle Varianten korrekt und sofort um. ✔ verifiziert (Kennwert/Marge/Modus/Reset).
- **K2 Deckungsgleichheit:** HTML-Studio und DOCX/PDF zeigen identische Zahlen (gemeinsamer
  Rechen-Kern). ✔ Residual B = 7'579'856 in beiden.
- **K3 Portabilitaet:** EIN selbst-tragendes HTML, offline auf jedem Geraet (Fonts eingebettet).
  ✔ 1.0 MB, keine externen Requests.
- **K4 JANS-Look:** DM Sans + Fragment Mono, monochrom + Oxidrot-Akzent, sechsstellige Daten,
  keine Gedankenstriche, keine fehlerhaften Umbrueche. ✔
- **K5 Faktenintegritaet:** EGRID/Parzelle amtlich (geo-zh), unbelegte Werte als Annahme markiert.
  ✔ EN2850 / CH689499917725 echt; Zone/Flaeche als Annahme gekennzeichnet.

## Verifier (zweite Pruefinstanz)

- **Geo-Connector** `geo-zh.mjs` als externes Signal fuer EGRID/Parzelle (identifikatoren-verifizieren).
- **Browser-Selbsttest** (preview): Live-Recompute, Modus-Toggle, Reset, Druckpfad geprueft.
- **Rechen-Kern** `studio_calc.py` als Single Source of Truth; JS-Engine + Dossier spiegeln ihn.
- Vor Kundenausgabe zusaetzlich: Skill `korrektur` (Texte) + `twin` (Fidelity), Markt-Annahmen
  gegen UBS-Fact-Sheet/Makleranalyse.

## Ausbaustufen

Erledigt (27.06.2026, autonom, auf Freigabe "beide Stufen bauen"):
- **3D-Massenmodell je Variante** — `tools/massing_svg.py`: isometrisches, abhaengigkeitsfreies
  inline-SVG (JANS-Monochrom, gemeinsamer Massstab, Leitvariante Oxidrot), automatisch von
  `build_studio.py` eingebettet. Echte `volumenstudie`-Renderings (c4d/axo) via `render_img` mit
  Vorrang. Verifiziert: 3 Massenmodelle korrekt skaliert (A 4'030 < B 4'926 < C 5'598 m³).
- **Sub-Agenten-Verdrahtung (deterministischer Teil)** — `tools/studio_assemble.py`: Adresse →
  `geo-zh.mjs` → echtes EGRID/Parzelle/Gemeinde → Modell-Geruest (meta gefuellt, Fachwerte als
  Annahme). Verifiziert an Bederstrasse 49 (EN2850 / CH689499917725). Die fachlichen Werte
  (Zone/Ausnuetzung via `baurecht`, Volumen/Markt via Agenten) fuellt Claude ins Geruest.

Erledigt (27.06.2026, Folge-Auftrag "echte Topografie"):
- **Echtes 3D-Situationsmodell** — `tools/studio_context.py` (gdal-frei): Parzelle via geo.admin
  find (EGRID→Polygon), Terrain via swisstopo-Profil-API (swissALTI3D), Nachbar-Gebaeudekuben via
  STAC (swissBUILDINGS3D_2), Render je Variante mit `situationsmodell.py` (Baukoerper auf echtem
  Gelaende im echten Kontext). AZ-konformer Footprint (`az=` → Footprint = AZ×Parzelle/Geschosse).
  `situationsmodell.terrain_grid` um gdal-freien `.xyz`-Pfad erweitert → ganze Pipeline ohne GDAL,
  auf jeder Station. Rule 260627 verankert. Verifiziert an Oberrieden Parz. 4100 (Fläche 982≈983 m²).
- **render_img selbst-tragend** — `build_studio.py` bettet lokale Bildpfade als base64 ein.

Weiter offen (nicht blockierend):
- Optionaler Headless-Chrome-PDF-Export des Studios (Druckpfad steht).
- Kennwerte-Reife: aus `wissen/grobkosten` automatisch je Nutzung/Standard vorbelegen.
- swissSURFACE3D-Baeume automatisch im Studio-Render (Pipeline kann es via `--baeume`, noch nicht
  in `studio_context.py` verdrahtet).
- Render-Optik (Kontrast/Aufloesung) heben bzw. optional auf c4d-Praesentationsqualitaet
  (Skill `volumenstudie`) umstellen.
