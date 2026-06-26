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

## Offene Punkte / Ausbaustufen (nicht blockierend)

- 3D-Renderings (Skill `volumenstudie`) automatisch je Variante einsetzen (`render_img`).
- Direkte Verdrahtung an die Sub-Agenten (volumen-rechner/wirtschaftlichkeit-rechner) statt
  manuell befuelltem Modell.
- Optionaler PDF-Export des Studios direkt aus dem Browser (Druckpfad steht; Headless-Chrome-
  Pipeline analog volumenstudie/render-remote moeglich).
- Kennwerte-Reife: aus `wissen/grobkosten` automatisch je Nutzung/Standard vorbelegen.
