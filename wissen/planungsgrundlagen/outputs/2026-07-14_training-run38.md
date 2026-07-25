# Trainings-Lauf 38 — 14.07.2026 (Kartenportale + Energie, TOKEN-VOLLGAS, Fan-out)

## Ausgangslage

Run 37 hatte den Brandschutz-Rueckstand vollstaendig geschlossen und die Recht/Norm-Rotation
fortgesetzt. Als naechstes stand laut Run-37-Empfehlung die Rotation Kartenportale/Energie an —
beide dort als "nur mit neuem Projektfall/Datenstand lohnend" eingestuft. Dieser Lauf hat beide
Domaenen parallel per Fan-out (zwei General-Purpose-Agenten) bearbeitet: ein Agent hat zwei
bisher nie erschlossene Fundstellen in PL-01 geprueft, der andere zwei offene Datenstand-Refreshs
(E5/E9) in PL-04 nachgezogen.

## Domaene 1 — Kartenportale (PL-01): zwei neue Fundstellen (K32/K33)

**K32 (echter Neufund):** Die Ordner `KtZH Zuerich/achtgradost.ch/Zonenplan/` und `.../WebGIS/`
zeigen, dass Acht Grad Ost AG (bisher nur als Anbieter der historischen-Terrain-Rekonstruktion
bekannt, K14) zusaetzlich ein oeffentliches, login-freies Gemeinde-WebGIS betreibt — ein
White-Label-Betrieb des kommunalen GIS-Portals durch eine private Vermessungsfirma, analog zu
`geoglatt.ch` (K15). Fallbeleg Gemeinde Regensdorf: Zonenplan/OEREB-Kataster-Layer, Baulinien-/
Abstandslinien-Layer (kommunal/kantonal/projektiert/Aufhebung) und AV-/Orthofoto-Planauskunft.
Eingearbeitet als neuer §5 in [[kartenportale-historisches-terrain-vermessungsbuero]] (Status
weiter `emerging`).

**K33 (Teil-Delta):** Der Login-Ordner von `geodienste.ch` enthaelt kein neues Registrierungs-
Sonderverfahren, praezisiert aber die Bestellmechanik: dreisprachige Bestaetigungslink-E-Mail +
individuelle kantonale Zugriffsrechte-Pruefung je Bestellung (real belegt Kt. BE, EGRID
CH609835664683, DXF GEOBAU) — erklaert das bereits dokumentierte Kt.-LU-Ablehnungsmuster.
Administrator "Geschaeftsstelle KGK-CGC" (Bern) erstmals benannt. Eingearbeitet in
[[kartenportale-geoportale-uebersicht]]. JANS-eigene Zugangsdaten (Passwort) wurden aus
Datenschutzgruenden bewusst NICHT in die KB uebernommen (analog K31-Praxis).

## Domaene 2 — Energie (PL-04): Datenstand-Refresh E5/E9 + Zusatzfrage E31

**E5 (MuKEn-2025-ZH-Umsetzung):** Vertiefter Web-Check (zh.ch Bauvorschriften/Klimastrategie,
hev-zh.ch, energiehub-gebaeude.ch, aeesuisse.ch) bestaetigt: **unveraendert** — weder
Vernehmlassung noch Gesetzesentwurf noch Inkrafttretensdatum fuer die ZH-Ueberfuehrung amtlich
auffindbar. Status bleibt "weiterhin ausstehend".

**E9 (THGE-Grenzwert graue Energie ZH):** Ebenfalls unveraendert, gekoppelt an E5. Wichtiger
Nebenfund: mehrere WebSearch-Zusammenfassungen behaupten unabhaengig einen ZH-Zielwert "bis 2027"
fuer einen eigenen Grauenergie-Grenzwert — bei Gegenpruefung der fuenf kantonalen
Massnahmenblaetter GE01-GE05 sowie der Bauvorschriften-/Klimastrategie-Seiten konnte das **nicht
amtlich verifiziert** werden (espazium-Artikel nennt nur Genf/Waadt/Basel-Stadt, nicht Zuerich).
Bewusst nicht als KB-Fakt uebernommen, sondern als offener Rechercheauftrag dokumentiert (Rule
`identifikatoren-verifizieren`) — ein Beispiel dafuer, dass die Verifikations-Pflicht auch
Sekundaerquellen-Behauptungen zurueckweist statt sie unkritisch zu uebernehmen.

**E31 (Zusatzfrage, Kapazitaet uebrig):** Pronovo-Tarifrechner KLEIV — Foerderstruktur seit
01.04.2025 unveraendert bestaetigt (keine neuen Bonus-Kategorien/Schwellen), Cross-Check zum
bereits in Run 36 erstellten Artikel [[energie-betriebsenergie-pv-wirtschaftlichkeit]].

Kein Artikel-Status wurde hochgestuft (established bleibt established, emerging bleibt emerging),
da keine neue amtliche Bestaetigung vorlag — konsequente Anwendung der Verifikations-Pflicht seit
12.07.2026: nur belegte Aenderungen fuehren zu einer Statusaenderung, ein "nichts Neues gefunden"
bleibt beim bisherigen Stand.

## Verifikations-Stufe (Pflicht seit 12.07.2026)

Beide Agenten haben vor jeder Uebernahme gegen die Originalquelle geprueft: Kartenportale-Agent
gegen die realen SharePoint-Dokumente (Regensdorf-Fallbeleg, Kt.-BE-Bestellbeleg), Energie-Agent
gegen amtliche Web-Quellen (zh.ch, fedlex-nahe Kantonsseiten) statt gegen unbelegte
Sekundaerquellen — die THGE-Grenzwert-Behauptung wurde deshalb bewusst NICHT uebernommen.

## Register aktualisiert
- `training/curriculum.md`: K32/K33 (Kartenportale, neu), E5/E9 (Refresh-Datum ergaenzt), E31 (neu).
- `wiki/QUESTIONS.md`: neue Eintraege unter "A — Kartenportale" (K32/K33) und "D — Energie" (D22).
- `wiki/INDEX.md`: Beschreibungszeilen [[kartenportale-historisches-terrain-vermessungsbuero]] und
  [[kartenportale-geoportale-uebersicht]] mit Run-38-Vermerk aktualisiert.
- `raw/_INGESTED.md`: neue Zeilen fuer SharePoint- (achtgradost.ch/geodienste.ch) und Web-Quellen
  (zh.ch/hev-zh.ch/energiehub-gebaeude.ch/aeesuisse.ch/espazium), Datum 2026-07-14.
- Frontmatter (`last_updated`/`sources`) auf allen sieben bearbeiteten Wiki-Artikeln gebumpt.

## Was als naechstes
- **Kartenportale:** achtgradost.ch-WebGIS-Endpunkt (login-frei) noch nicht als Connector-Feature
  getestet — bei realem Projektfall in einer der bedienten Gemeinden pruefen, ob er sich analog
  `geoglatt.ch` fuer den Connector eignet.
- **Energie:** E5/E9 bleiben offen, bis Kt. ZH die MuKEn-2025-Ueberfuehrung amtlich publiziert —
  naechster Refresh nur bei konkretem Hinweis (kein Kalender-Countdown), analog E17-Praxis.
- **Rotation:** naechster Lauf Recht/Norm oder Brandschutz (beide seit Run 37 ohne bekannten
  Rueckstand) — Ordner-Abgleich-Methodik hat sich als zuverlaessigster Weg erwiesen, echte neue
  Funde zu identifizieren, auch in scheinbar erschoepften Domaenen.
