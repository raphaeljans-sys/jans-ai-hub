# Trainings-Lauf 37 — 14.07.2026 (Brandschutz-Rueckstand + Recht/Norm, TOKEN-VOLLGAS)

## Ausgangslage

Run 36 (Brandschutz+Energie) hatte einen offenen Rueckstand hinterlassen: den Doppelspur-Flag
(Wissens-Chef Run 3) fuer `brandschutz-pl03-wegweiser.md` und den Rest-Backlog (Gefaehrliche
Stoffe, Baustoff&Bauteile Volltext, DIN EN 12101-2, Brandmauern 100-15). Parallel dazu war die
Rotation bei Recht/Norm (nach Run 35) faellig. Dieser Lauf hat beide Domaenen parallel per
Fan-out (zwei General-Purpose-Agenten) bearbeitet — Brandschutz schliesst den Rueckstand,
Recht/Norm setzt die Rotation mit einem neuen Ordner-Abgleich fort.

## Domaene 1 — Brandschutz (PL-03): Rueckstand vollstaendig geschlossen

**Doppelspur-Fix (Wissens-Chef Run 3, aeltester offener Punkt):** Die in Run 34/36 direkt in
[[brandschutz-pl03-wegweiser]] eingearbeiteten VKF-BSR-Volltext-Ziffern (§5o-§5y, BSR
10/12/16/17/18/19/20/22/23/24/25/27-15) wurden Ziffer fuer Ziffer gegen die bereits vorhandenen
Destillate in `wissen/normen/destillate/vkf-brl-*` abgeglichen (keine Abweichungen gefunden) und
auf Destillat-Verweis + JANS-Anwendungsnotiz + 1-2 verifizierte Kernzahlen gekuerzt (Rule
`normen-referenz.md`: nicht duplizieren, verlinken). Ausnahme bewusst belassen: §5s
(Nachweisverfahren BSR 27-15) — die Normen-KB laesst die raucharme-Schicht-Zahlenwerte
(≥2.5 m/≤50°C/K≤0.20 m⁻¹/≤200°C) aus Urheberrechtsgruenden aus; diese wurden direkt gegen
S. 10 des Originals nachverifiziert und bleiben im Wegweiser stehen.

**Rest-Backlog (vier Punkte, alle geloest):**
- **§4/13-15 Baustoff & Bauteile:** JANS-Anwendungsnotiz (RF-Klasse↔Leistungserklaerung,
  F30/F60→EI-Uebersetzungstabelle BSR-Nr. 201-238 fuer Bestand-Ertuechtigung) mit Verweis auf
  das vorhandene Normen-KB-Destillat statt Neu-Destillation.
- **§5z Gefaehrliche Stoffe (BSR 26-15):** bestaetigt niedrige Prioritaet, EINE echte Ausnahme
  dokumentiert — Diesel-/Heizoel-Notstromaggregate in Spital/Pflegeheim koennen unter die
  100-kg-Lagermengenschwelle fallen.
- **§5aa DIN EN 12101-2:** Produktnorm-Ebene (Leistungserklaerung NRWG-Ausloesevorrichtungen),
  ergaenzt (nicht dupliziert) die Bedarfsschwellen-Logik aus BSR 21-15/§5l.
- **§5ab Brandmauern 100-15:** beide Kopien waren 0-Byte-Sync-Platzhalter (analog Lignum-Erdbeben-
  Fall), jetzt 3.17 MB lesbar. REI 180/90/60-Hierarchie + 1.0 m/0.3 m-Aussenwandbekleidungs-
  Unterbrechungsregel, verlinkt mit der PV-Brandmauer-Regel in [[energie-pv-brandschutz]].

**Ausgaben-Delta Solaranlagen-Merkblatt (2015 vs. 2022):** VKF-Merkblatt 2001-15 wurde gemaess
Swissolar-STP-Quelle selbst per 01.01.2022 aktualisiert; weder das lokal abgelegte PDF noch die
Normen-KB-Destillate tragen bisher den 2022-Datenstand — als Datenstand-Vermerk in
[[energie-pv-brandschutz]] dokumentiert (kein Volltext-Delta pruefbar, da Rev.-2022-Original
nicht im SharePoint-Inventar).

Der Wegweiser ist durch die Kuerzung netto schlanker geworden (~1361 → ~1300 Zeilen) bei
gleichzeitig MEHR abgedeckten Themen (2 neue Abschnitte) — Kompoundieren statt Duplizieren wirkt.

## Domaene 2 — Recht & Norm (PL-02): Ordner-Abgleich + RPG-2-Refresh

Systematischer Abgleich des kompletten PL-02-Baums gegen R1-R35 (alle bereits [x]) foerderte den
bisher nie systematisch geoeffneten Ordner `04_Merkblätter` (~110 Dateien) zu Tage — drei echte
Funde:

- **Hindernisfreies Bauen ZH** (UGZ-Merkblaetter Aufzuege + Wohnungsbau) → NEU
  [[recht-norm-hindernisfreies-bauen-zh]]: BehiG-Geltungsbereich gestaffelt nach Wohnungszahl
  (5-8 / >8 Wohnungen), Aufzugs-Kabinenmasse inkl. § 40 BBV I Krankentransport-Mass
  (1.10×2.10 m), vollstaendige Wohnungsbau-Fixmasse, Mehrkosten-Schwelle 20 %/5 %. Schliesst die
  seit Run 32 (R27) offen benannte SIA-500-Vollzugsluecke.
- **Hochwassergefahrenkarte ZH** (GVZ/AWEL-Leitfaden, ⚠ © 2003) → Ergaenzung §7b
  [[kartenportale-naturgefahren-objektschutz]]: § 22 WWG ZH-Rechtsgrundlage, Gefahrenmatrix,
  Gefahrenstufen rot/blau/gelb (deckungsgleich zur SZ-Stufung), entschaedigungslose
  Eigentumsbeschraenkung. ZH-GIS-Layer-Endpunkt bleibt weiterhin unkartiert (nur Rechtsteil
  geschlossen).
- **Dachlandschaften-Leitfaden ZH** (AFS 2010, ⚠) → Ergaenzung [[recht-norm-ivhb-baubegriffe]]:
  Dachaufbau-/Aufstockung-Grundsaetze + 5-Kategorien-Solaranlagen-Tabelle nach
  Denkmalschutz-Anspruch, verlinkt mit dem Energie-PV-Artikel.

**RPG-2-Refresh:** WebSearch/WebFetch der offiziellen zh.ch-Seite bestaetigt unveraenderten Stand
seit 2026-06-28/07-13 (kein PBG-/Richtplan-Fertigstellungsdatum); die parallele
Denkmalschutz-PBG-Revision (RRB 02.07.2026) haengt weiterhin beim Kantonsrat ohne
Schlussabstimmungsdatum. In [[recht-norm-quellenlandkarte]] R6-Eintrag ergaenzt (nicht
ueberschrieben).

## Verifikations-Stufe (Pflicht seit 12.07.2026)

Beide Agenten haben vor jeder Status-Hebung/Uebernahme direkt gegen die Originalquelle
gegengeprueft: Brandschutz-Agent verifizierte alle 10 gekuerzten Doppelspur-Abschnitte
Ziffer-fuer-Ziffer gegen die Normen-KB-Destillate (keine Abweichung) sowie die vier
raucharme-Schicht-Kennzahlen direkt gegen S. 10 des BSR-27-15-Originals; Recht/Norm-Agent
verifizierte den RPG-2-Stand gegen die amtliche zh.ch-Quelle. Keine Beanstandungen, keine
Ruecksetzung auf `speculative` noetig.

## Register aktualisiert
- `training/curriculum.md`: B29 (Brandschutz), R36-R38 + R6-Ergaenzung (Recht/Norm).
- `wiki/QUESTIONS.md`: Wissens-Chef-Run-3-Carried-Forward geloest, C30 neu; Abschnitt B ergaenzt.
- `wiki/INDEX.md`: neuer Artikel [[recht-norm-hindernisfreies-bauen-zh]] + aktualisierte Zeilen.
- `raw/_INGESTED.md`: neu gelesene PL-03-Quellen ergaenzt.
- Frontmatter (`last_updated`/`sources`) auf allen 9 bearbeiteten Wiki-Artikeln gebumpt.

## Was als naechstes
- **Rotation:** naechster Lauf Kartenportale (nur mit neuem Projektfall lohnend, seit Run 31/35
  bestaetigt erschoepft) oder Energie (naechster echter Ordner/Projektfall abwarten).
- **Recht/Norm-Rest:** zweite, MD5-unterschiedliche Kopie `AFS_Leitfaden_Dachlandschaften.pdf`
  noch nicht gelesen; Datum des Aufzugs-Merkblatts gegen aktuelle UGZ-Webseite verifizieren;
  ZH-Hochwasser-GIS-Layer-Endpunkt weiterhin nicht kartiert.
- **Brandschutz:** kein bekannter Rueckstand mehr offen — Rest-Backlog aus Run 34 (Baustoff&Bauteile,
  Gefaehrliche Stoffe, DIN EN 12101-2, Brandmauern) ist mit diesem Lauf vollstaendig abgearbeitet.
