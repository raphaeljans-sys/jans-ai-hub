# Trainings-Lauf 33 — 13.07.2026 (Kartenportale + Recht/Norm, TOKEN-VOLLGAS)

## Ausgangslage

Vor diesem Lauf war das Curriculum bereits fast vollstaendig abgearbeitet (32 Vorlaeufe,
Domaenen Kartenportale/Energie/Recht-Norm/Brandschutz alle tief erschlossen). Statt neue
Fragen ins Blaue zu formulieren, wurden gezielt die wenigen im Curriculum verbliebenen
**"Offen"-Vermerke** aufgeloest — produktiver als eine weitere Ordner-Vollsuche.

## Domaene 1 — Recht & Norm (PL-02)

### R19-Rest: IVHB-Leitfaden Ziff. 5.1-8.5 (vollstaendig gelesen)
`IVHB_Leitfaden_01.03.2017.pdf`, S. 21-49, war in Run 28 nur bis zum Inhaltsverzeichnis
erschlossen. In diesem Lauf vollstaendig gelesen und mit amtlichem Wortlaut in
[[recht-norm-ivhb-baubegriffe]] eingearbeitet:

- **Gesamthoehe** (§ 281 PBG), **Fassadenhoehe** (§ 278 PBG, inkl. giebelseitiger
  45°/max.-7-m-Erhoehung und Attikageschoss-3,3-m-Zuschlag), **Kniestockhoehe** (§ 275
  Abs. 2), **lichte Hoehe** (§ 304, neu 2,4 m auch fuer EFH).
- **Voll-/Unter-/Dach-/Attikageschosse** (§ 275 PBG) — insbesondere die neue
  Untergeschoss-Formel (Mittel ≤2,5 m / Max ≤3,0 m ab Fertigboden) und die
  Attikageschoss-Ruecksatz-Verschaerfung (neu nur noch halbe statt volle Geschosshoehe).
- **Grenz-/Gebaeudeabstand, Baulinien, Baubereich** (§§ 260/96 PBG, § 7 ABV).
- **Baumassenziffer/Ueberbauungsziffer/Gruenflaechenziffer/Ausnuetzungsziffer** (§§
  256-259/254 PBG) mit vollstaendigen Formeln + Dachaufbauten-/Wintergarten-Boni (§§
  10-13 ABV, kumulativ 20 % bei BMZ/UeZ/AZ).

**Praxisrelevanz:** Die Baumassenziffer-Formel und die Attikageschoss-Regel sind direkt in
die Volumenrechnung der Skills `machbarkeit`/`volumenstudie` uebertragbar — bisher stand
dort nur eine sekundaerquellen-gestuetzte Naeherung.

### R21-Rest: `4094.pdf` identifiziert
War seit Run 28 als unidentifizierte Zweitquelle im SubV-Ordner offen. Gelesen (S. 1-3):
Kantonsratsvorlage Nr. 4094 vom 23.7.2003 — die Weisung des Regierungsrates zur
**Genehmigung der revidierten Submissionsverordnung**. Liefert die Entstehungsgeschichte
der bereits dokumentierten SubV (IVoeB-Beitritt ZH 22.9.1996, SVO in Kraft seit 1.11.1997,
Revision 2003 ausgeloest durch das Bilaterale Abkommen Schweiz-EU von 2002) →
[[recht-norm-submissionsverordnung-zh]] neuer Abschnitt.

## Domaene 2 — Kartenportale (PL-01)

### K10/K10-Rest: Naturgefahren- und Grundwasserschutzzonen-Endpunkte (Retest)
Run 24 hatte einen `GetCapabilities`-Fehler ("WFS request not enabled") gemeldet und beide
Endpunkte als unauffindbar abgeschlossen. In diesem Lauf erneut abgerufen:

- `GetCapabilities` liefert diesmal **14'503 Zeilen** ohne Fehler — der Vorlauf-Fehler war
  offenbar transient (Server-/Netzwerkzustand), kein dauerhaftes Zugriffsproblem.
- **Grundwasserschutzzonen GELOEST:** `ms:ogd-0143_arv_basis_grundwasser_gws_zone_f` (+
  `_proj_f`) und `ms:ogd-0149_arv_basis_grundwasser_gws_areal_f` gefunden. Live-`GetFeature`
  an zwei Benchmark-Parzellen (Langnau a.A. Kat. 3338, Wetzikon Kat. 6505, bbox ±200-300 m)
  liefert je ein schema-valides `FeatureCollection`-Dokument mit `numberMatched="0"` — der
  Endpunkt **funktioniert nachweislich**, an diesen zwei Parzellen liegt schlicht keine
  Schutzzone. Status **emerging**: Endpunkt belegt, Positiv-Benchmark fuer die Feldliste
  noch offen.
- **Naturgefahrenkarte weiterhin offen:** dieselbe vollstaendige Capabilities-Antwort
  enthaelt **keinen** Naturgefahren-Layer (Stichwortsuche "gefahr"/"hazard" ohne Treffer).
  Ein Rateversuch auf `maps.zh.ch/wms/NaturgefahrenZH` ergab `HTTP Basic: Access denied` —
  bestaetigt, dass ein allfaelliger WMS **login-pflichtig** waere. Bleibt technisch offen,
  naechster Schritt ist eine direkte Anfrage bei der AWEL-Fachstelle statt weiterem Raten.

## Register/Wiki aktualisiert
- [[recht-norm-ivhb-baubegriffe]] — Artikel jetzt vollstaendig (keine offenen Ziffern mehr).
- [[recht-norm-submissionsverordnung-zh]] — Zweitquelle identifiziert und eingearbeitet.
- [[kartenportale-naturgefahren-objektschutz]] §8 — Endpunkt-Stand aktualisiert (1 geloest,
  1 bestaetigt offen).
- `training/curriculum.md`, `raw/_INGESTED.md`, `CHANGELOG.md` nachgefuehrt.

## Was als naechstes
- Positiv-Benchmark fuer die Grundwasserschutzzone suchen (Parzelle im Glatt-/Limmattal),
  dann Connector-Erweiterung `--produkt grundwasserschutz` bauen + testen.
- ZH-Naturgefahrenkarte-Endpunkt direkt bei AWEL erfragen statt weiter zu raten.
- Naechster Rotationslauf: Energie oder Brandschutz (Kartenportale + Recht/Norm sind mit
  diesem Lauf beide auf "keine offenen Curriculum-Punkte mehr" — Folgelaeufe sollten wieder
  auf frisches Material aus neuen Projektfaellen warten statt weiter im selben Bestand zu
  graben, um Doppelarbeit zu vermeiden).
