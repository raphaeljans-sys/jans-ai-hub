# Trainingslauf 42 — Kartenportale (PL-01) + Energie (PL-04), Token-Vollgas

**Datum:** 2026-07-14 · **Station:** MacBook Pro · **Methodik:** Ordner-Abgleich gegen Curriculum
(K1-K36 Kartenportale, E1-E35 Energie bereits erschlossen), Rotation nach Run 41 (Recht/Norm +
Brandschutz) turnusgemaess zurueck zu Kartenportale + Energie.

## Ausgangslage

Beide Domaenen sind nach 40 Vorlaeufen sehr weit erschlossen — die meisten PL-01/PL-04-Unterordner
sind bereits kartiert. Der Ordner-Abgleich dieses Laufs (systematischer `find`-Vergleich der
SharePoint-Struktur gegen `_INGESTED.md`) identifizierte 10 bisher ungepruefte Kandidaten-Ordner;
davon lieferten 6 einen echten inhaltlichen Delta, 3 bestaetigten den bereits dokumentierten
Stand (ehrlicher Nicht-Fund), 1 wurde wegen Screenshot-only-Inhalt nicht vertieft.

## Domaene 1 — Kartenportale (PL-01)

**K37 — kein Delta.** `CH Schweiz/gisos.bak.admin.ch/` enthaelt nur den bereits in K34 als
"nur Portal-Link belegt" dokumentierten bloßen URL-Verweis (`gisos.bak.admin.ch/sites`) — bestaetigt
den bestehenden Stand zu ISOS.

**K38 — Kt.-Bern-Portalarchitektur praezisiert.** Der Ordner `KtBE Bern/` war bisher nur als
"punktuell fuer ein Einzelprojekt genutzt" eingeordnet. Die real archivierte Korrespondenz
(Schloss Muenchenwiler, 27.09.2023) zeigt die Portal-Trennung analog zu ZH: `be-geo.ch` ist das
Login-/Registrierungsportal, `map.apps.be.ch` (bzw. `be_map.apps.be.ch`) der eigentliche
Kartenclient. Zustaendige Amtsstelle: Amt fuer Geoinformation, Direktion fuer Inneres und Justiz
Kt. Bern (Kontaktperson benannt). Fuer die amtliche Vermessung verweist der Kanton auf
`geodienste.ch` mit einer bisher nicht dokumentierten **Deckelung auf max. 5 Parzellen pro
Bestellung** (Shapefile) — enger als der direkte kantonale Geoshop-Weg in ZH/SZ. →
[[kartenportale-geoportale-uebersicht]], Status `emerging`.

**K39 — Sunrise/UPC-Markenfusion.** Der Ordner `Werkleitungen/sunrise.ch/` (Anmeldung + reale
Planbestellung Reckholdern 20 Willerzell) zeigt, dass der Sunrise-Markenauftritt technisch auf
dieselbe Domaene `leitungskataster.upc.ch` fuehrt wie das bereits als K11 dokumentierte
UPC-Portal — kein zweites System, sondern derselbe Bezugsweg unter zwei Marken (Post-Fusion-
Zustand). → [[kartenportale-werkleitungskataster]] §1-Tabelle.

**Weitere geprueft, kein Fund/keine Vertiefung:** `Eigentumsabfrage Objektwesen/_https.docx`
(deckt sich vollstaendig mit dem bereits dokumentierten A5-Navigationsweg, kein Delta);
`CH Schweiz/geoportal.ch/Einsiedeln/` (bestaetigt die bereits in K19 dokumentierte
GEOINFO→EW-Lachen-Weiterleitung, keine neue Information); `KtLU Luzern/Geodatenshop Kanton
Luzern/` (reine Bestellprozess-Screenshots, K16-Einordnung "niedrige Prioritaet" bleibt gueltig,
nicht vertieft).

## Domaene 2 — Energie (PL-04)

**E36 — NEU, eigenstaendige Domaene.** Bisher unerschlossene Datei
`_Formulare Kanton ZH Baueingabe/checkliste_gebaeudeschadstoffe.pdf` (AWEL, Ausgabe 02.2023,
8 Seiten, vollstaendig gelesen). Eigenstaendiges Baueingabe-Erfordernis neben Energienachweis und
den bereits dokumentierten Zusatzformularen (WTA/Schallschutz/Versickerung): **Vier-Faelle-Weiche**
fuer Asbest-/PCB-/CP-Vorabklaerung nach Baujahr/Bausumme/Rueckbauvolumen (Art. 16 VVEA), zwei
Sanierungswege (instruierte Handwerker vs. Suva-anerkannter Sanierer je nach Bauteil), und eine
Liste **untersuchungspflichtiger Spezialobjekte** — darunter **Spitaeler** — die unabhaengig vom
CHF-200'000-Schwellenwert vor jedem Umbau eine Fachperson-Begutachtung nahelegen. Direkter
Healthcare-Bezug: neuer Artikel [[energie-baustoffe-schadstoffe-rueckbau]], Status `established`
(amtliche AWEL-Primaerquelle), verlinkt zu `ankaufspruefung` (CapEx-Fahrplan) und `ausschreibung`
(Rueckbau-LV).

**E37/E38 — SolarApp und PVSOL premium als Tools eingeordnet.** Beide Werkzeuge waren bereits als
Datenquelle in der Benchmark-Tabelle (§3) zitiert, aber nie als eigenstaendige Tools beschrieben.
Neue Sektion §2c in [[energie-pv-eignung-typenwahl]]:
- **SolarApp AG** (Deitingen SO) liefert ein vollstaendiges "SolarReport"-Vorprojekt (Auslegung +
  Nutzenanalyse, inkl. Statikbericht-Anhang). Der real gelesene Willerzell-Bericht (09.01.2024)
  ergaenzt die bereits dokumentierten Ertrags-/Kostenzahlen um die bisher fehlende
  **Eigenverbrauchs-/Unabhaengigkeitsseite**: Produktion 7'743 kWh/a, Eigenverbrauch 3'386 kWh,
  Unabhaengigkeit **53 %**.
- **PVSOL premium** (Valentin Software GmbH) ist demgegenueber eine Desktop-Fachplanersoftware
  fuer TGA-/Elektroplaner-Subunternehmer. Realer Beleg: Elektroingenieurbuero Thomas Lueem
  Partner AG (Baar) fuer eine **491.4-kWp-Grossanlage** (1'638 Module, 6 Wechselrichter). Der
  Bericht traegt den expliziten Vorbehalt "rudimentaere Simulation ... kein Planungsdokument".

Beide Tools sind damit klar eingeordnet: SolarApp bedient Kleinanlagen (EFH/MFH) direkt fuer
Bauherrschaft/JANS, PVSOL premium ist das Werkzeug der TGA-Subplaner fuer Grossanlagen — beide
liefern ausdruecklich kein Ausfuehrungsdokument.

## Verifikations-Stufe

Alle Funde stammen aus direkten Primaerquellen (amtliches AWEL-PDF, reale Vorprojekt-/
Simulationsberichte, reale E-Mail-/Vertrags-Korrespondenz aus dem PL-Ordner) ohne konkurrierende
Zweitquelle. Status `established` fuer die Checkliste Gebaeudeschadstoffe (amtliche Quelle,
vollstaendig gelesen) und die SolarApp-/PVSOL-Einordnung (reale Berichte, Zahlen direkt aus dem
PDF); `emerging` fuer Kt.-Bern-Portal und Sunrise-Delta (Einzelfall-Beleg, nicht ueber mehrere
Faelle verifiziert).

## Naechste Schritte

- Energie: Restbacklog aus `_Heizwaermebedarf/` teilweise noch nicht vertieft (Sunskin-Latten-
  einteilung/Montagedetails — zu tief fuer KB-Ebene, eher Fachplaner-Skill-Tiefe).
- Kartenportale: `KtLU Luzern` bleibt bewusst bei niedriger Prioritaet (K16-Einordnung
  bestaetigt); naechster echter Backlog-Kandidat waere ein vertiefter Blick auf
  `Grundstueckkataster/`-Regionalordner (Maur/Niederhasli/Langnau/Thalwil) — bisher nur als
  DXF-Benchmark-Quelle genutzt, nicht auf Delta-Inhalte geprueft.
- Rotation: naechster Turnus (Run 43 oder spaeter) zurueck zu Recht/Norm (`12-Bauwerkdokumentation`,
  `16-Ingenieurwesen`) + Brandschutz (naechster PL-03-Unterordner ausserhalb der bereits
  vollstaendig ausgewerteten Richtlinien-Serie).
